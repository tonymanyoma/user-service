const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const moment = require('moment');
const crypto = require('crypto');
const CryptoJS = require("crypto-js");
require('dotenv').config();
// const redisclient = require('../Config/redis');
const decryptMiddleware = require('../Middlewares/decrypt')

// import models
var User = require('../Models/User');
var Company = require('../Models/Company');
const { response } = require('express');
var Client  = require('../Models/Client');
var Device  = require('../Models/Device');
const AuthenticationSignature = require('../Models/AuthenticationSignature');

var generateAccessToken = function (data, res) { 

    const user = data;
    const payload = { user: user };

    var tokens = {};
      
    tokens.token =  jwt.sign(payload, process.env.JWT_SECRET, {expiresIn: process.env.JWT_EXPIRES} )
    tokens.refreshToken = jwt.sign(payload, process.env.JWT_REFRESH_SECRET, {expiresIn: process.env.JWT_REFRESH_EXPIRATION} )

    return tokens

}

var controller = {

    sign_in: async (req, res) => {

        try{

            var data = req.body.data

            var decrypted = decryptMiddleware.decrypt(data)

            var email = decrypted.attributes.email;
            var password = decrypted.attributes.password;
            var rut = decrypted.attributes.rut;
            var company = decrypted.attributes.company;
            
            // var email = req.body.attributes.email;
            // var password = req.body.attributes.password;
            // var rut = req.body.attributes.rut;
            // var company = req.body.attributes.company;
            var userAgent = req.headers['user-agent'];
            var deviceId = req.headers['x-device-id'];

            var user;
            var resource;
            var client;


            if(email != '' && rut == '' || rut == null){
                if(company && company != ''){
                   user = await User.findOne({ where: { email: email, company: company}, limit: 1})
                }else{
                   user = await User.findOne({ where: { email: email}, limit: 1})
                }
            }else{
                if(company != ''){
                    user = await User.findOne({ where: { rut: rut, company: company}, limit: 1})
                }else{
                    user = await User.findOne({ where: { rut: rut}, limit: 1})
                } 
            }

            if(user == null){
                res.json({error:'error el usuario no se encuentra'}) 
            }

            

            if(user.user_info_type == 'admin' || user.user_info_type == 'superadmin'){
                resource = user
                // console.log('if admin superadmin')
            }else{
                resource = user
                // console.log('if client')
            }


            if(resource){
                const match = bcrypt.compare(password, resource.encrypted_password);

                if(match) {
                    
                    const accessToken = generateAccessToken(resource);

                    if(resource.user_info_type == 'Client'){
                        client = await Client.findOne({ where: { id: resource.user_info_id} })

                    }

                    
                    var device_type = User.capture_device_type(userAgent)
                    const device = await Device.create({ user_id: user.id, device_type: device_type, signature: deviceId});
                    
                    var expirationDate = moment().add(parseInt(process.env.JWT_EXPIRES), 'days').format('YYYY-MM-DD hh:mm:ss');
                    var jti = crypto.createHash('sha256').update(process.env.JTI_SECRET).digest('hex');
                    var aud = crypto.createHash('sha256').update(process.env.AUD_SECRET).digest('hex');

                    const authentication_signature = await AuthenticationSignature.create({ jti: jti, aud: aud, device_id: device.id, state: 'ACTIVE', expiration: expirationDate})


                    res.header('authorization', accessToken).json({
                        message: 'Usuario autenticado',
                        log_file: "SessionLog",
                        data: {attributes:resource, id:resource.id},
                        included: [{attributes:client, id:client.id}],
                        status: 201,
                        meta: {
                            authentication_token: accessToken.token,
                            refreshauthentication_token: accessToken.refreshToken,
                            uuid: resource.id
                        },
                        accessToken: accessToken.token,
                        refreshToken: accessToken.refreshToken,
                    });

                }else{

                res.json({error:'contraseña incorrecta'})

                }
            }


        }catch(e){
            res.json({error:e})
        }


	},


    sign_out: (req, res) => {

           const authHeader = req.headers["authorization"];
            jwt.sign(authHeader, "", { expiresIn: 1 } , (logout, err) => {
               if (logout) {
                  res.send({msg : 'Has sido desconectado' });
               } else {
                  res.send({msg:'Error'});
               }
            });
        

    },

    RefreshToken: (req, res) => {

        const refreshToken = req.headers['authorization'];

    }

}





module.exports = controller;
