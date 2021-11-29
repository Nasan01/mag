const mysql = require("mysql");
const connection = require('../config/db');

var Auth = function (Personnel) {
    this.matricule = Personnel.matricule
    this.mdp = Personnel.mdp
}

const login = (matricule, mdp, result) => {
    connection.query(
        "SELECT * FROM personnel WHERE matricule_p = ? AND mdp_p = ?",
        [matricule, mdp],
        function (err, rows, fields) {
            if(err) {
                throw err;
                result(null, err);
            }
            result(null, [rows, fields]);    
        }
    );

}

module.exports = {
    login
}