const jwt = require('jsonwebtoken');
const { Op } = require("sequelize");
const bcrypt = require('bcrypt');
const decryptMiddleware = require('../Middlewares/decrypt')

// import models

const Company = require('../Models/Company');


var controller = {

    getCompany: async (req, res) => {

        try{

            var id = req.params.id

            if(id){
                
                var findcompany = await Company.findOne({ where: { id: id} })

                if(findcompany){
    
                    res.json({
                        data: {id:id,attributes:findcompany, type:"company"},
                        status: 200,
                    });
                }


            }


        }catch(e){

            res.json({error:e})
        }
      
    },


    

}

module.exports = controller;

