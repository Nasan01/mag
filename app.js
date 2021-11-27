const createError = require("http-errors");
const express = require("express");
const path = require('path');
const cookieParser = require("cookie-parser");
const morgan = require("morgan");
const {body, validationResult} = require("express-validator");
const flash = require("express-flash");
const session = require('express-session');
const bodyParser = require('body-parser');

const mysql = require('mysql');
const connection = require('./config/db');

const app = express();

app.set('views', path.join(__dirname, "views"));
app.set("view engine", "ejs");

app.use(morgan('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use(session({
    secret: "123456cat",
    resave: false,
    saveUninitialized: true,
    cookie: {maxAge: 60000}
}));

app.use(flash());

app.get("/", function(req, res) {
    res.render('accueil', { title:"home" }); 
 });

app.use(function (req, res, next) {
    next(createError(404));
});

/* app.use(function (err, req, res, next) {
    res.locals.message = err.message;
    res.locals.error = req.app.get("env") === "development" ? err :{},
    res.status(err.status || 500);
    res.render("error");
}); */

app.listen(5000, function () {
    console.log("magesti app is running on port 5000 !!");
});


