var express = require('express');
var authController = require('../Controllers/authController');


var router = express.Router();



// Rutas de autenticación
router.post('/users/sign_in', authController.sign_in);
// router.delete('/users/sign_out', authController.sign_out);
router.post('/refresh_token', authController.RefreshToken);

module.exports = router;