const express = require("express");
var path = require('path');
const bodyParser = require("body-parser");
const cors = require("cors");
const db = require("./app/models");
const Sequelize = require("sequelize");
const session = require('express-session');
const app = express();

app.use(cors(corsOptions));

var corsOptions = {
  origin: "http://localhost:8081"
};

app.set('views', path.join(__dirname, 'app/views'));
app.set('view engine', 'ejs');
app.use(express.static(path.join(__dirname, 'app/public')));



// parse requests of content-type - application/json
app.use(bodyParser.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// simple route


// set port, listen for requests
const PORT = process.env.PORT || 2453;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});

// const db = require("./app/models");
// const Role = db.role;

// db.sequelize.sync({force: true}).then(() => {
//   console.log('Drop and Resync Db');
//   initial();
// });

// function initial() {
//   Role.create({
//     id: 1,
//     name: "user"
//   });
 
//   Role.create({
//     id: 2,
//     name: "moderator"
//   });
 
//   Role.create({
//     id: 3,
//     name: "admin"
//   });
// }

require('./app/routes/auth.routes')(app);
require('./app/routes/user.routes')(app);
require('./app/routes/category.routes')(app);
require('./app/routes/producer.routes')(app);
require('./app/routes/banner.routes')(app);
require('./app/routes/new.routes')(app);
require('./app/routes/product.routes')(app);
require('./app/routes/contact.routes')(app);
require('./app/routes/review.routes')(app);
require('./app/routes/productimage.routes')(app);
require('./app/routes/orderproduct.routes')(app);