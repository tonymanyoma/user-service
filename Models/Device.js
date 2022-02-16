
const { Model, DataTypes } = require('sequelize');
const sequelize = require('../DB.js');
// import models
var User = require('./User');
var AuthenticationSignature = require('./AuthenticationSignature');

class Device extends Model {}
 Device.init({
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    user_id:{ 
        type: DataTypes.BIGINT,
        references: {
            model: User,
            key: "user_id"
        }
    },
    device_type: DataTypes.STRING,
    signature: DataTypes.STRING,
    createdAt: {
        field: 'created_at',
        type: DataTypes.DATE,
    },
    updatedAt: {
        field: 'updated_at',
        type: DataTypes.DATE,
    },
    fcm_id: DataTypes.STRING,
},{
    sequelize,
    modelName: 'device'
})

Device.hasMany(AuthenticationSignature, {foreignKey: 'device_id', as: 'fk_authentication_signature'});

// Device.belongsTo(User, {foreignKey: 'user_id'});

module.exports = Device;