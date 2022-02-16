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
// app.use(require('express-status-monitor')());

// Cargar ficheros rutas
var authRoutes = require('./routes/authRoutes');
var userRoutes = require('./routes/userRoutes');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());


app.use(cors())

// Añadir perfijos a rutas / cargar rutas
app.use('/api/v1/',userRoutes);
app.use('/api/v1/',authRoutes);




//iniciando el server 
const PORT = config.port


//corriendo el servidor de socket io
server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})


