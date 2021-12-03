const connection = require("../config/db");

const addCommandeProduit = (commande, cb) => {
    connection.query(
        "INSERT INTO produit_commande SET ?",
        commande, 
        function (err, res) {
            if(err) throw err;
            cb(null , res);
        }
    );
}

module.exports = {
    addCommandeProduit
}