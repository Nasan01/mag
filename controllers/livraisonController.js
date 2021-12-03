const livraisonModel = require("../models/livraisonModel");

const addLivraison = (req, res) => {
    const {
        com_livr,
        date_livraison,
        heure_debut,
        heure_fin,
        endroit, 
        remarque
    } = req.body;
    livraisonModel.addLivraison({
        com_livr: com_livr,
        date_livraison: date_livraison,
        heure_debut: heure_debut,
        heure_fin: heure_fin,
        endroit: endroit,
        remarque: remarque,
        status: "en_attente"
    }, function (err, result) {
        if(err) throw err;
        res.send(result);
    });
}

module.exports = {
    addLivraison
}