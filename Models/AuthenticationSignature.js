const { Model, DataTypes } = require('sequelize');
const sequelize = require('../DB.js');
// import models
var Device = require('./Device');

class AuthenticationSignature extends Model {}
AuthenticationSignature.init({
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    jti: DataTypes.STRING,
    aud: DataTypes.STRING,
    device_id:{ 
        type: DataTypes.BIGINT,
        references: {
            model: Device,
            key: "device_id"
        }
    },
    state: DataTypes.STRING,
    expiration: DataTypes.DATE,
    createdAt: {
        field: 'created_at',
        type: DataTypes.DATE,
    },
    updatedAt: {
        field: 'updated_at',
        type: DataTypes.DATE,
    }
},{
    sequelize,
    modelName: 'authentication_signatures',
    freezeTableName: true
})

// AuthenticationSignature.belongsTo(Device, {foreignKey: 'device_id'});

module.exports = AuthenticationSignature;