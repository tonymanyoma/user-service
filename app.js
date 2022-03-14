//requiriendo dependencias 
const cors = require('cors')
const express = require('express');
var bodyParser = require('body-parser');
const jwt = require('jsonwebtoken');
const http = require('http')
const config = require('./Config/config')
const Sequelize = require('sequelize');
//instancia de express
const app = express()
const server = http.createServer(app)


// Cargar ficheros rutas
var authRoutes = require('./Routes/authRoutes');
var userRoutes = require('./Routes/userRoutes');
var companyRoutes = require('./Routes/companyRoutes');
var accessRoutes = require('./Routes/accessRoutes');

app.use(bodyParser.json({limit: "50mb"}));
app.use(bodyParser.urlencoded({limit: "50mb", extended: true, parameterLimit:50000}));


app.use(cors())

// Añadir perfijos a rutas / cargar rutas
app.use('/api/',userRoutes);
app.use('/api/',authRoutes);
app.use('/api/',companyRoutes);
app.use('/api/',accessRoutes);


//iniciando el server 
const PORT = config.port


//corriendo el servidor de socket io
server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})


