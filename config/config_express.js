let express = require('express');
let consign = require('consign');
let mysql = require("mysql");
let bodyParser = require('body-parser');
let expressValidator = require('express-validator');

module.exports = function() {
    let app = express();

    app.use(bodyParser.urlencoded({extended: true}));
    app.use(bodyParser.json());
    app.use(expressValidator());    
    
    consign()
    //.include("config/config.js")
    .include('controllers')
    .then('servicos')
    .then('models')
    .then('controllers')        
    .into(app);
    

    return app;
}