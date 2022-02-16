var express = require('express');
var usersController = require('../Controllers/usersController');
const auth = require('../Middlewares/auth');
const jwt = require('jsonwebtoken');
require('dotenv').config();

var router = express.Router();


// Rutas de usuarios
router.get('/users/getUsers', auth.validateToken, usersController.getUsers);
router.get('/users/directory', auth.validateToken, usersController.directory);
router.get('/users/findUserByRut', auth.validateToken, usersController.findUserByRut);
router.post('/users/updateClientData', auth.validateToken, usersController.updateClientData);
router.put('/users/updatePasswordWithEmail', auth.validateToken, usersController.updatePasswordWithEmail);
router.put('/users/forgotPasswordWithCode', auth.validateToken, usersController.forgotPasswordWithCode);
router.post('/users/closeAllSessions', auth.validateToken, usersController.closeAllSessions);
router.post('/users/uploadUserOrCreate', auth.validateToken, usersController.uploadUserOrCreate);



module.exports = router;