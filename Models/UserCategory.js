
const { Model, DataTypes } = require('sequelize');
const sequelize = require('../DB.js');
// import models
var Company = require('./Company');
// var AuthenticationSignature = require('./AuthenticationSignature');

class UserCategory extends Model {}
UserCategory.init({
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    name: DataTypes.STRING,
    description: DataTypes.STRING,
    access_doors: DataTypes.INTEGER,
    company_id: {
        type: DataTypes.BIGINT,
        references: {
            model: Company,
            key: "company_id"
        }
    },
    createdAt: {
        field: 'created_at',
        type: DataTypes.DATE,
    },
    updatedAt: {
        field: 'updated_at',
        type: DataTypes.DATE,
    },
    send_invitation: DataTypes.BOOLEAN,
},{
    sequelize,
    modelName: 'user_categories',
    freezeTableName: true
})



module.exports = UserCategory;
