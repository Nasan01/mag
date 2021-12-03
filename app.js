const createError = require("http-errors");
const express = require("express");
const path = require('path');
const cookieParser = require("cookie-parser");
const morgan = require("morgan");
const {body, validationResult} = require("express-validator");
const flash = require("express-flash");
const session = require('express-session');
const bodyParser = require('body-parser');
const cors = require("cors");

const mysql = require('mysql');
const connection = require('./config/db');

const authRoute = require("./routes/authRoute");
const clientRoute = require("./routes/clientRoute");
const produitRoute = require("./routes/produitRoute");
const tacheRoute = require("./routes/tacheRoute");
const discussionRoute = require("./routes/discussionRoute");
const commandeRoute = require("./routes/commandeRoute");
const livraisonRoute = require("./routes/livraisonRoute");
const { menu } = require("./config/helper");

const app = express();

app.set('views', path.join(__dirname, "views"));
app.set("view engine", "ejs");

const corsOption = {
    origin: "http://localhost:5000",
    optionsSuccessStatus: 200
}

app.use(cors(corsOption));
app.use(morgan('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use(session({
    secret: "123456cat",
    resave: false,
    saveUninitialized: true,
    cookie: {maxAge: 240000}
}));

app.use(flash());

// routes

app.use("/personnel", authRoute);
app.use("/clients", clientRoute);
app.use("/produits", produitRoute);
app.use("/taches", tacheRoute);
app.use("/discussions", discussionRoute);
app.use("/commandes", commandeRoute);
app.use("/livraisons", livraisonRoute);

app.get("/", function(req, res) {
    if(req.session.loggedin){
        const menu_link = menu(req.session.matricule);
        res.render('accueil', { title:"home", matricule: req.session.matricule, menu:menu_link }); 
    } else {
        res.redirect("/personnel/login");
    }
    
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


