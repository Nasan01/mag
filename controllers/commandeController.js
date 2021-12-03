const commandeModel = require("../models/commandeModel");

const addCommande = (req, res) => {
    const {
        code_produit,
        quantite,
        com_livr
    } = req.body;

    commandeModel.addCommandeProduit({
        code_produit: code_produit,
        quantite: quantite,
        com_livr: com_livr
    }, function (err, commande) {
        if(err) throw err;
        res.send(commande);
    });
}

module.exports = {
    addCommande
}