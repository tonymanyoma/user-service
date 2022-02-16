const nodemailer = require('nodemailer');
const hbs = require('nodemailer-express-handlebars')
const path = require('path')

// email sender function
exports.sendEmail = function(to,subject,template,data){



// Definimos el transporter
    var transporter = nodemailer.createTransport({
        service: 'gmail',
        host: 'smtp.gmail.com',
        port: 465,
        secure: true,
        auth: {
            user: 'antony.fusepong@gmail.com',
            pass: 'fusepong2022'
        },
        tls : { rejectUnauthorized: false }
    });


// point to the template folder
const handlebarOptions = {
    viewEngine: {
        extName: ".handlebars",
        partialsDir: path.resolve(__dirname,'../Views'),
        defaultLayout: false,
    },
    viewPath: path.resolve(__dirname,'../Views'),
    extName: ".handlebars",
};

// use a template file with nodemailer
transporter.use('compile', hbs(handlebarOptions))


var mailOptions = {
    to: to,
    subject: subject,
    template: template,
    context: data
};

        
// trigger the sending of the E-mail
transporter.sendMail(mailOptions, function(error, info){
    if(error){
        return console.log(error);
    }
    console.log('Message sent: ' + info.response);
});


};