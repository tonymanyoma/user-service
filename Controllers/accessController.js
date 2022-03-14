const jwt = require('jsonwebtoken');
const { Op } = require("sequelize");
const bcrypt = require('bcrypt');
const decryptMiddleware = require('../Middlewares/decrypt')

// import models

const User = require('../Models/User');
const Client = require('../Models/Client');


var controller = {

    updateAccessState: async (req, res) => {

        var data = req.body.data

        var decrypted = decryptMiddleware.decrypt(data)

        console.log(decrypted)
            
        var access_state = decrypted.access_state
        var user_ids = decrypted.user_ids


        for(var i=0; i<user_ids.length; i++){

            var iduser = user_ids[i]

            var findUser = await User.findOne({ where: { id: iduser} })

            var findClient = await User.user_info(findUser.user_info_id)

            await Client.update({access_state: access_state}, {where: { id: findClient.id }} ) 

        }

        res.json({
            status: 200,
            message:"Estado de acceso actualizados"
        })


   
    },


    

}

module.exports = controller;

