const jwt = require('jsonwebtoken');
const { Op } = require("sequelize");
const bcrypt = require('bcrypt');
const decryptMiddleware = require('../Middlewares/decrypt')
const mailController = require('../Controllers/mailController')
const random = require('string-random');
const moment = require('moment');

// import models
const User = require('../Models/User');
const Company = require('../Models/Company');
const Client = require('../Models/Client');
const Device = require('../Models/Device');
const UserCategory = require('../Models/UserCategory');
const AuthenticationSignature = require('../Models/AuthenticationSignature');

var controller = {

    getUsers: (req, res) => {

        User.findAll().then(function(data){
            res.json({
              username: req.user,
              message:'desde el microservicio de usuarios', 
              data: data
            })
        })
        .catch(error =>{
            console.log('error', error)
            res.json({error:error})
        })
      
    },


    directory: async (req, res) => {

        try{

            // console.log(req.query)

            var company = req.query.company.id

            var users = await User.findAll({ where: { company: company, user_info_id:{[Op.not]: null } } })

            if(users){
                res.json({
                    message: 'Directorio de usuarios',
                    data: users,
                    status: 200,
                });
            }else{
                res.json({
                    title:"No hay usuarios en su compañia",
                    status: 422
                })
            }

        }catch(e){

            res.json({error:e})
        }
      
    },

    findUserByRut: async (req, res) => {

        try{

            var rut = req.query.rut
            var company_id = req.query.company_id

            var user = await User.findOne({ where: { rut: rut,company: company_id} })

            var user_info = await User.user_info(user.user_info_id)

            var user_categories = await UserCategory.findOne({ where: { company_id: company_id} })

            if(user){
                res.json({
                    message: 'Usuario encontrado',
                    user: user, 
                    user_categories: user_categories, 
                    user_info: user_info, 
                    status: 200,
                });
            }else{
                res.json({title:"No se encuentra el usuario",
                status: 422
                })
            }

        }catch(e){

            res.json({error:e})
        }    
    },


    updateClientData: async (req, res) => {

        try{

            var data = req.body.data

            var decrypted = decryptMiddleware.decrypt(data)

            console.log(decrypted)

            var rut = decrypted.rut
            var company_id = decrypted.company_id
            var email = decrypted.email
            var password = decrypted.password
            var password_confirmation = decrypted.password_confirmation
            var user_category_id = decrypted.user_info_attributes.user_category_id
            var blocked = decrypted.blocked

            // var rut = req.body.data.rut
            // var company_id = req.body.data.company_id
            // var email = req.body.data.email
            // var password = req.body.data.password
            // var password_confirmation = req.body.data.password_confirmation
            // var user_category_id = req.body.data.user_info_attributes.user_category_id
            // var blocked = req.body.data.blocked

            var user = {}
            var user_info = {}
            var user_category

            var findUser = await User.findOne({ where: { rut: rut,company: company_id} })

            if(findUser){

                if(email == null || email == ''){
                    res.json({
                        status: 422,
                        title: 'Campos incompletos',
                        details: 'El campo de correo electrónico no puede estar vacío.'
                    })
                }

                decrypted.email != null ? user.email = decrypted.email : null
                decrypted.mobile != null ? user.mobile = decrypted.mobile : null

                decrypted.user_info_attributes.name != null ? user_info.name = decrypted.user_info_attributes.name : null
                decrypted.user_info_attributes.last_name != null ? user_info.last_name = decrypted.user_info_attributes.last_name : null
                decrypted.user_info_attributes.gender != null ? user_info.gender = decrypted.user_info_attributes.gender : null
                decrypted.user_info_attributes.birthday != null ? user_info.birthday = decrypted.user_info_attributes.birthday : null
                decrypted.user_info_attributes.location_id != null ? user_info.location_id = decrypted.user_info_attributes.location_id : null

                if(user_category_id != null && user_category_id != ''){
                    user_category = await UserCategory.findOne({ where: { id: user_category_id} })
                    var available_locations = user_category != null ? user_category.access_doors : []
                    user_info.user_category_id = user_category.id
                    user_info.access_doors = available_locations
                }
                if( (password != null && password != '') && (password_confirmation != null && password_confirmation != '')){
                    var encryptedPassword = await bcrypt.hash(password, 10);
                    user.password = encryptedPassword
                }
                if(findUser.blocked && blocked != null && blocked == false){
                    user.blocked = false
                    user.unlocked_on_platform = true
                }else if(!findUser.blocked && blocked != null && blocked == true){
                    user.blocked = true
                    user.unlocked_on_platform = false
                }

                User.update(user, { where: { id: findUser.id }})
                Client.update(user_info, { where: { id: findUser.user_info_id }})

                res.json({
                    message: '¡Datos actualizados correctamente!',
                    status: 200,
                });

            }else{

                res.json({
                    status: 422,
                    title: 'No se encuentra el usuario',
                })

            }

        }catch(e){

            res.json({error:e})
        }    
    },


    updatePasswordWithEmail: async (req, res) => {

        try{

            var data = req.body.data

            var decrypted = decryptMiddleware.decrypt(data)

            var email = decrypted.data.attributes.email
            var password = decrypted.data.attributes.password
            var password_confirmation = decrypted.data.attributes.password_confirmation

            
            // var email = req.body.data.attributes.email
            // var password = req.body.data.attributes.password
            // var password_confirmation = req.body.data.attributes.password_confirmation


            var user = await User.findOne({ where: { email: email} })

            if(user){
                if( (password != null && password_confirmation != null) && (password == password_confirmation)){

                    const match = bcrypt.compare(password, user.encrypted_password);

                    if(match){

                        var encryptedPassword = await bcrypt.hash(password_confirmation, 10);
                     
                        User.update({encrypted_password: encryptedPassword}, { where: { id: user.id }})

                        res.json({
                            message: 'Contraseña actualizada',
                            status: 200,
                        });
                    }else{
                        res.json({
                            status: 422,
                            title: 'La contraseña no coincide',
                        })
                    }
                }
            }

        }catch(e){

            res.json({error:e})
        }    
    },

    forgotPasswordWithCode: async (req, res) => {

        try{

            var data = req.body.data

            var decrypted = decryptMiddleware.decrypt(data)

            var email = decrypted.email
            var company = decrypted.company

            // var email = req.body.data.email
            // var company = req.body.data.company

            var validation_code
            var new_password

            var user = await User.findOne({ where: { email: email, company: company == 5 ? 7 : company }, limit: 1})


            if( user != null ){


                var pinRandom = random(8, {letters: false}) 

                validation_code = Buffer.from(pinRandom).toString('base64')

                new_password = validation_code

                var findCompany = await Company.findOne({ where: { id: user.company}, limit: 1})
                var client = await Client.findOne({ where: { id: user.user_info_id}, limit: 1})

                var updateClient = await Client.update({update_data: false}, { where: { id: client.id }})

                var encryptedPassword = await bcrypt.hash(validation_code, 10);

                var updateUser = await User.update({encrypted_password: encryptedPassword ,validation_code: validation_code}, { where: { id: user.id }})

                if(updateClient && updateUser){

                    var data = {
                        validation_code: validation_code,
                        company_name: company.name,
                        company_logo: company.logo
                    }


                    mailController.sendEmail(user.email,'Recuperación de contraseña','forgotPasswordWithCode',data)

                    res.json({
                        message: 'hemos enviado un correo con las instrucciones para continuar el proceso',
                        status: 200,
                    });

                }else{
                    res.json({
                        status: 422,
                        title: 'usuario no valido',
                    })
                }
            }

    

            
        }catch(e){

            res.json({error:e})
        }   
      
    },


    closeAllSessions: async (req, res) => {

        try{

            var data = req.body.data

            var decrypted = decryptMiddleware.decrypt(data)

            var userId = decrypted.id
            var password = decrypted.password

            // var userId = req.body.data.id
            // var password = req.body.data.password

            var user = await User.findOne({ where: { id: userId }, limit: 1})

            if(user){

                const match = bcrypt.compare(password, user.encrypted_password);

                if(match){

                    var devices = await Device.findAll({ where: { user_id: user.id }, include: [{model: AuthenticationSignature, as: 'fk_authentication_signature', where:{state:'ACTIVE'}}] })

                      if(devices){

                        for(var i=0; i<devices.length; i++){
                           
                            for(var x=0; x<devices[i].fk_authentication_signature.length; x++){
  
                                AuthenticationSignature.update({ state:'EXPIRED'}, {where:{id:devices[i].fk_authentication_signature[x].id }} ) 
                            }
                      }

                            res.json({
                                status: 200,
                                title: 'Se han cerrado todas las sesiones activas'
                            })
                            
                        }

                }else{
                    res.json({
                        status: 422,
                        title: 'Contraseña incorrecta',
                    })
                }

            }else{
                res.json({
                    status: 422,
                    title: 'No se ha encontrado ningún usuario',
                })
            }

        }catch(e){

            res.json({error:e})
        }
      
    },

    uploadUserOrCreate: async (req, res) => {

        try{

            var data = req.body.data

            var decrypted = decryptMiddleware.decrypt(data)

            console.log(decrypted)

            var users = decrypted.new
            var company = decrypted.company_id

            // var users = req.body.data.new
            // var company = req.body.data.company_id

            var userSaved
            var available_locations
            var user_category
            var ruts

            var user = {}
            var user_info = {}
            var newUser
            var newClient


            var findCompany = await Company.findOne({ where: { id: company}, limit: 1})

            if(findCompany){

                available_locations=[]
                user_category= null

                for(var i=0; i<users.length; i++){


                    var findUser = await User.findOne({ where: { rut: users[i]['Rut'][0]}, limit: 1})

                    if(users[i]['Plan de usuario'][0] != null){

                        user_category = await UserCategory.findAll({ where: { company_id: company  }, limit: 1})
                        available_locations = user_category.length>0 ? user_category[0].access_doors : []

                        console.log('available_locations',available_locations)
                    }

                    if(findUser != null){


                        user.user_info_type = 'Client'
                        user.email = users[i]['Email'][0]
                        user.mobile = users[i]['Celular'][0]

                        User.update(user, {where: { id: findUser.id }} ) 


                        user_info.birthday = moment(users[i]['Fecha de nacimiento'][0],'DD/MM/YYYY').format('YYYY-MM-DD ')
                        user_info.nationality = users[i]['Nacionalidad'] == null ? "Colombiana" : users[i]['Nacionalidad'][0]
                        user_info.name = users[i]['Nombre'][0]
                        user_info.last_name = users[i]['Apellido'][0]
                        user_info.gender = users[i]['Genero'][0]
                        user_info.plan_from = moment(users[i]['Fecha inicio'][0],'DD/MM/YYYY').format('YYYY-MM-DD ')
                        user_info.plan_until = moment(users[i]['Fecha fin'][0],'DD/MM/YYYY').format('YYYY-MM-DD ')
                        user_info.plan_type = users[i]['Categoria'][0]
                        user_info.access_state = users[i]['GRANTED']
                        user_info.user_category_id = users[i]['Plan de usuario'] != null ? user_category[0].id : null
                        user_info.access_doors = [available_locations[0]]
                        user_info.location_id = available_locations.length < 1 ? null : available_locations

                        Client.update(user_info, {where: { id: findUser.user_info_id }} ) 

                    }else{
    

                        user_info.birthday = moment(users[i]['Fecha de nacimiento'][0],'DD/MM/YYYY').format('YYYY-MM-DD ')
                        user_info.nationality = users[i]['Nacionalidad'] == null ? "Colombiana" : users[i]['Nacionalidad'][0]
                        user_info.name = users[i]['Nombre'][0]
                        user_info.last_name = users[i]['Apellido'][0]
                        user_info.gender = users[i]['Genero'][0]
                        user_info.plan_from = moment(users[i]['Fecha inicio'][0],'DD/MM/YYYY').format('YYYY-MM-DD ')
                        user_info.plan_until = moment(users[i]['Fecha fin'][0],'DD/MM/YYYY').format('YYYY-MM-DD ')
                        user_info.plan_type = users[i]['Categoria'][0]
                        user_info.access_state = 'GRANTED'
                        user_info.user_category_id = users[i]['Plan de usuario'][0] != null ? user_category[0].id : null
                        user_info.access_doors = [available_locations[0]]
                        user_info.location_id = available_locations.length < 1 ? null : available_locations
                       
                        newClient = await Client.create(user_info) 

                        var encryptedPassword = await bcrypt.hash(users[i]['Rut'][0], 10);

                        user.mobile = users[i]['Celular'][0]
                        user.email = users[i]['Email'][0]
                        user.rut = users[i]['Rut'][0]
                        user.encrypted_password = encryptedPassword
                        user.user_info_type = 'Client'
                        user.company = findCompany.id
                        user.user_company = 'us.'+users[i]['Rut'][0]+'.comp.'+findCompany.id
                        user.user_info_id = newClient.id

                        newUser = await User.create(user)


                        if(newUser && newClient){
       
                            var email = users[i]['Email'][0].toLowerCase()
                    
                            var data = {
                                email: email,
                                rut: users[i]['Rut'][0],
                                company_id: findCompany.id,
                                company_logo: findCompany.logo
                            }
                
                            mailController.sendEmail(users[i]['Email'][0],'Registro Exitoso','registerByImporter',data)
                            userSaved=true
                        }else{
                            userSaved=false
                        }

                        if(userSaved == false){
                            ruts.push(users[i]['Rut'][0])
                        }

                    }

                }

                res.json({
                    status: 200,
                    ans: 'Usuarios importados y guardados correctamente a excepción de los ruts:'+ ruts
                })


            }else{

                res.json({
                    status: 422,
                    ans: 'Ingrese una compañia válida',
                })

            }

        }catch(e){

            res.json({error:e})
        }
      
    },


    showUser: (req, res) => {

        var id = req.body.id
    

        Client.findByPk(id).then(function(data){
            res.json({message:'desde el microservicio de usuarios', data: data})
        })
        .catch(error =>{
            console.log('error', error)
            res.json({error:error})
        })
      
    },

    

}

module.exports = controller;

