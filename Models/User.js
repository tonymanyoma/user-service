
const { Model, DataTypes } = require('sequelize');
const sequelize = require('../DB.js');
var parser = require('ua-parser-js');
// import models
var Device = require('./Device');
var AuthenticationSignature = require('./AuthenticationSignature');
const Company = require('./Company.js');
const Client = require('./Client.js');

class User extends Model {}
User.init({
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    email: DataTypes.STRING,
    mobile: DataTypes.STRING,
    encrypted_password: DataTypes.STRING,
    user_info_type: DataTypes.STRING,
    user_info_id: DataTypes.BIGINT,
    reset_password_token: DataTypes.STRING,
    reset_password_sent_at: DataTypes.DATE,
    remember_created_at: DataTypes.DATE,
    sign_in_count: DataTypes.INTEGER,
    current_sign_in_at: DataTypes.DATE,
    last_sign_in_at: DataTypes.DATE,
    current_sign_in_ip: DataTypes.INET,
    last_sign_in_ip: DataTypes.INET,
    createdAt: {
        field: 'created_at',
        type: DataTypes.DATE,
    },
    updatedAt: {
        field: 'updated_at',
        type: DataTypes.DATE,
    },
    rut: DataTypes.STRING,
    deporwin_person_id: DataTypes.INTEGER,
    acceptance_terms_covid: DataTypes.BOOLEAN,
    acceptance_date: DataTypes.DATE,
    gym: DataTypes.STRING,
    gym_address: DataTypes.STRING,
    from_franchise: DataTypes.BOOLEAN,
    user_company: DataTypes.STRING,
    company: {
        type: DataTypes.INTEGER,
        references: {
            model: Company,
 
        }
    },
    validation_code: DataTypes.STRING,
    send_invitation: DataTypes.BOOLEAN,
    access_pin: DataTypes.STRING,
    physiotherapy_appointment: DataTypes.STRING,
    blocked: DataTypes.BOOLEAN,
    unlocked_on_platform: DataTypes.BOOLEAN,
},{
    sequelize,
    modelName: 'user'
})


User.hasMany(Device, {foreignKey: 'user_id'});

User.belongsToMany(AuthenticationSignature,{ through: 'Device' });

User.belongsTo(Company, {foreignKey: 'company', as: 'fk_company'});


User.capture_device_type = function(data) {
    
    var device_type = parser(data)

    return device_type.browser.name;

}

User.user_info = async function(user_info_id) {
    
    var client = await Client.findOne({ where: { id: user_info_id} })

    return client;

}

module.exports = User;
