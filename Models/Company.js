
const { Model, DataTypes } = require('sequelize');
const sequelize = require('../DB.js');

// import models
var UserCategory = require('./UserCategory');
var User = require('./User');

class Company extends Model {}
Company.init({
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },
    subdomain: DataTypes.STRING,
    name: DataTypes.STRING,
    createdAt: {
        field: 'created_at',
        type: DataTypes.DATE,
    },
    updatedAt: {
        field: 'updated_at',
        type: DataTypes.DATE,
    },
    unicode: DataTypes.BOOLEAN,
    multicode: DataTypes.BOOLEAN,
    read_qr: DataTypes.BOOLEAN,
    read_agent: DataTypes.BOOLEAN,
    read_code: DataTypes.BOOLEAN,
    reward: DataTypes.BOOLEAN,
    rad_scan: DataTypes.BOOLEAN,
    description: DataTypes.STRING,
    address: DataTypes.STRING,
    identify_number: DataTypes.STRING,
    logo: DataTypes.STRING,
    dashboard_users: DataTypes.BOOLEAN,
    dashboard_offers: DataTypes.BOOLEAN,
    dashboard_rewards: DataTypes.BOOLEAN,
    dashboard_access: DataTypes.BOOLEAN,
    offers_redemption_form: DataTypes.STRING,
    offers_favorites: DataTypes.BOOLEAN,
    rewards_user_characteristics: DataTypes.BOOLEAN,
    rewards_segments: DataTypes.BOOLEAN,
    rewards_rewards: DataTypes.BOOLEAN,
    access_general_access: DataTypes.STRING,
    access_without_internet_access: DataTypes.BOOLEAN,     
    access_keyboard_access: DataTypes.BOOLEAN,
    access_dynamic_invitations: DataTypes.BOOLEAN,
    access_room_bookings: DataTypes.STRING,
    access_courtesies: DataTypes.BOOLEAN,
    access_covenants: DataTypes.BOOLEAN,
    access_reports: DataTypes.BOOLEAN,
    access_alerts: DataTypes.BOOLEAN,
    access_counter: DataTypes.BOOLEAN,
    access_user_access: DataTypes.BOOLEAN,
    locations_offers_and_rewards: DataTypes.BOOLEAN,
    locations_sublocations: DataTypes.JSON,
    locations_holidays: DataTypes.BOOLEAN,
    personal_trainer_classes: DataTypes.BOOLEAN,
    messages_notifications: DataTypes.BOOLEAN,
    messages_segment_mails: DataTypes.BOOLEAN,
    news_general_news: DataTypes.BOOLEAN,
    news_video_news: DataTypes.BOOLEAN,     
    news_twits_news: DataTypes.BOOLEAN,
    events_tickets: DataTypes.BOOLEAN,
    company_connections_company_connections: DataTypes.BOOLEAN,
    client_information_us: DataTypes.BOOLEAN,
    client_information_contact_us: DataTypes.BOOLEAN,
    personalize_web_page: DataTypes.BOOLEAN,
    personalize_mobile_app: DataTypes.BOOLEAN,
    personalize_colors: DataTypes.JSON,
    personalize_principal_sections: DataTypes.STRING,
    personalize_secondary_sections: DataTypes.STRING,
    personalize_personalize_mails: DataTypes.BOOLEAN,
    inside_request_payment_certificate: DataTypes.BOOLEAN,
    inside_request_work_certificate: DataTypes.BOOLEAN,
    inside_request_contribution_certificate: DataTypes.BOOLEAN,
    inside_request_payroll_credit: DataTypes.BOOLEAN,
    api_connections_crm: DataTypes.BOOLEAN,
    api_connections_end_points: DataTypes.BOOLEAN,
    contact_email: DataTypes.STRING,
    validate_covid_terms: DataTypes.STRING,
    whatsapp_notifications: DataTypes.STRING,
    max_time_exceeded_blocking: DataTypes.STRING,

},{
    sequelize,
    modelName: 'company'
})

Company.hasMany(UserCategory, {foreignKey: 'company_id'});

// Company.hasMany(User, {foreignKey: 'company'});

module.exports = Company;
