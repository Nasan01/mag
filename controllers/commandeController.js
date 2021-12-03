const commandeModel = require("../models/commandeModel");

const addCommandeProduit = (req, res) => {
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

const addCommande = (req, res) => {
    const {
        com_livr,
        code_client
    } = req.body;

    commandeModel.addCommande({
        com_livr: com_livr,
        date_commande: new Date(),
        matricule: req.session.matricule,
        code_client: code_client
    }, function (err, commande) {
        if(err) throw err;
        res.send(commande);
    });
}

module.exports = {
    addCommandeProduit,
    addCommande
}