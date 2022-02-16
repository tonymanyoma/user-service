const jwt = require('jsonwebtoken');
require('dotenv').config();


const middleware = {

    validateToken: function (req, res, next) {

        const accessToken = req.headers['authorization'];
    
        if (!accessToken)res.send('Access denied')
    
        jwt.verify(accessToken, process.env.JWT_SECRET, (err, user) => {
            if(err){
                res.send('Access denied, token expired or incorrect')
            }else{
                req.user = user;
                next();
            }
        })
    }
}

module.exports = middleware;