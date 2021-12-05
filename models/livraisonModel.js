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

const findLivraison = (dateLivraison, statusLivraison, cb) => {
    connection.query(
        "SELECT commande.code_client, livraison.endroit, produit.code_produit, produit_commande.quantite FROM livraison JOIN commande ON commande.com_livr = livraison.com_livr JOIN produit_commande ON produit_commande.com_livr = commande.com_livr JOIN produit ON produit.code_produit = produit_commande.code_produit WHERE livraison.date_livraison = ? AND livraison.status = ?",
        [dateLivraison, statusLivraison],
        function (err, res, rows) {
            if(err) throw err;
            cb(null, res);
        }
    );
}

module.exports = {
    addLivraison,
    findLivraison
};