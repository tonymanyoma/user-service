const { Model, DataTypes } = require('sequelize');
const sequelize = require('../DB.js');


class Client extends Model {}
Client.init({
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    name: DataTypes.STRING,
    last_name: DataTypes.STRING,
    nationality: DataTypes.STRING,
    gender: DataTypes.STRING,
    birthday: DataTypes.DATE,
    location: DataTypes.STRING,
    picture: DataTypes.STRING,
    createdAt: {
        field: 'created_at',
        type: DataTypes.DATE,
    },
    updatedAt: {
        field: 'updated_at',
        type: DataTypes.DATE,
    },
    location_id: DataTypes.BIGINT,
    access_state: DataTypes.STRING,
    type: DataTypes.STRING,
    plan_from: DataTypes.DATE,
    plan_until: DataTypes.DATE,
    plan_type: DataTypes.STRING,
    membership_type: DataTypes.STRING,
    profession: DataTypes.STRING,
    address: DataTypes.STRING,
    update_data: DataTypes.BOOLEAN,
    access_doors: DataTypes.ARRAY(DataTypes.INTEGER),
    user_category_id: DataTypes.BIGINT,

},{
    sequelize,
    modelName: 'client'
})

module.exports = Client;
