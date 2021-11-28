const mysql = require("mysql");
const connection = require("../config/db");

const authLogin_get = (req, res) => {

    res.render("auth/login", { 
        title: "login",
        matricule: "",
        mdp: ""
    });
    
   
}

const authentication = (req, res) => {
    const { matricule, mdp } = req.body;
    connection.query(
        "SELECT * FROM personnel WHERE matricule_p = ? AND mdp_p = ?",
        [matricule, mdp],
        function (err, rows, fields) {
            if(err) throw err;
            if(rows.length <= 0){
                req.flash("error", "Mauvais matricule ou mot de passe");
                res.redirect('/personnel/login');
            }else {
                req.session.loggedin = true;
                req.session.matricule = matricule;
                res.redirect('/');
            }
        }
    )
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