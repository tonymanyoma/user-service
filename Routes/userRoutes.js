var express = require('express');
var usersController = require('../Controllers/usersController');
const auth = require('../Middlewares/auth');
const jwt = require('jsonwebtoken');
require('dotenv').config();

var router = express.Router();


// Rutas de usuarios
router.get('/users/getUsers', auth.validateToken, usersController.getUsers);
router.get('/users/directory', auth.validateToken, usersController.directory);
router.get('/users/find_user_by_rut', auth.validateToken, usersController.findUserByRut);
router.post('/users/update_client_data', auth.validateToken, usersController.updateClientData);
router.put('/users/update_password_with_email', auth.validateToken, usersController.updatePasswordWithEmail);
router.put('/users/forgot_password_with_code', auth.validateToken, usersController.forgotPasswordWithCode);
router.post('/users/close_all_sessions', auth.validateToken, usersController.closeAllSessions);
router.post('/users/upload_user_or_create', auth.validateToken, usersController.uploadUserOrCreate);



module.exports = router;
