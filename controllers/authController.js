const mysql = require("mysql");
const connection = require("../config/db");
const { login } = require("../models/authModel");

const authLogin_get = (req, res) => {

    res.render("auth/login", { 
        title: "login",
        matricule: "",
        mdp: ""
    });
    
   
}

const authentication = (req, res) => {
    const { matricule, mdp } = req.body;
    login(matricule, mdp, function (err, resul) {
        if(err) throw err;
        const [rows, fields] = resul;
        if(rows.length <= 0){
            req.flash("error", "Mauvais matricule ou mot de passe");
            res.redirect('/personnel/login');
        } else {
            req.session.loggedin = true;
            req.session.matricule = matricule;
            res.redirect('/');
        }
        console.log(rows);
    });
}

const authLogout = (req, res) => {
    req.flash("success", "Connectez-vous ici!!");
    req.session.destroy();
    res.redirect("/personnel/login");
}

module.exports = {
    authLogin_get,
    authentication,
    authLogout
}