const connection = require("../config/db");

const addLivraison = (livraison, cb) => {
    connection.query(
        "INSERT INTO livraison SET ?",
        livraison,
        function (err, res) {
            if(err) throw err;
            cb(null, res);
        }
    );
}

module.exports = {
    addLivraison
};