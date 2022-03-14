
const { Model, DataTypes } = require('sequelize');
const sequelize = require('../DB.js');
// import models


class Location extends Model {}
 Location.init({
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    latitude:DataTypes.INTEGER,
    longitude:DataTypes.INTEGER,
    title: DataTypes.STRING,
    city: DataTypes.STRING,
    location_type: DataTypes.STRING,
    name: DataTypes.STRING,
    description: DataTypes.STRING,
    address: DataTypes.STRING,
    telephone: DataTypes.STRING,
    email: DataTypes.STRING,
    image: DataTypes.STRING,
    link: DataTypes.STRING,
    concept: DataTypes.STRING,
    nationality_code: DataTypes.STRING,
    published: DataTypes.BOOLEAN,
    is_shopping_center: DataTypes.BOOLEAN,
    createdAt: {
        field: 'created_at',
        type: DataTypes.DATE,
    },
    updatedAt: {
        field: 'updated_at',
        type: DataTypes.DATE,
    },
    
    is_trainer: DataTypes.BOOLEAN,
    schedule_image: DataTypes.STRING,
    manager_image: DataTypes.STRING,
    manager_email: DataTypes.STRING,
    location_category_id: DataTypes.BIGINT,
    deporwin_doors_access:DataTypes.INTEGER,
    country: DataTypes.STRING,
    time_zone: DataTypes.STRING,
    use_fingerprint: DataTypes.BOOLEAN,
    company_id: DataTypes.BIGINT,
    invitations_max_uses:DataTypes.INTEGER,

},{
    sequelize,
    modelName: 'location'
})



module.exports = Location;