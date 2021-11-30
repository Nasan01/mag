const connection = require("../config/db");

const findWithLimit = (count, limit, cb) => {
    connection.query(
        "SELECT * FROM produit LIMIT ?,?",
        [count, limit],
        function (err, res) {
            if(err) throw err;
            cb(null, res);
        }
    );
}

const addProduit = (produit, cb) => {
    connection.query(
        "INSERT INTO produit SET ?",
        produit,
        function (err, results, rows) {
            if(err) throw err;
            cb(null, [results, rows]);
        }
    );
}

module.exports = {
    findWithLimit,
    addProduit
}