const mysqlPromise = require("mysql2/promise");
const { menu } = require("../config/helper");
const produitModel = require("../models/produitModel");

const get_all_produit = async (req, res) => {
    const { id } = req.params;
    let nbr = 10, id_convert;
    id_convert = parseInt(id);
    let suivant = id_convert * nbr;
    const connectionPromise = await mysqlPromise.createConnection({host:"localhost", user:"root", password:"", database: "magesti"})
    if(req.session.loggedin){
        const menu_link = menu(req.session.matricule);
        produitModel.findWithLimit(suivant, nbr, async function (err, produits) {
            const [results, fields] = await connectionPromise.execute('SELECT count(*) as test FROM produit');
            let page_count = results[0].test / nbr;
            res.render('produit/index', { 
                title:"produits", 
                matricule: req.session.matricule, 
                menu:menu_link,
                produits: produits,
                page_count: Math.round(page_count),
                id: id_convert
            });  
        });
    } else {
        res.redirect("/personnel/login");
    }
}

const automateAddingProduit = (req, res) => {
    for(let i = 0; i < 50; i++) {
        let co = Math.round(Math.random()*100);
        produitModel.addProduit({
            code_produit: "PRO0" + co,
            nom_produit: "DEO-TEST-"+i,
            photo_produit: "PRO0" + co,
            description_produit: "Déodorant TROS ROLL ON WHITENING PROTECT "+i+i,
            moded_emploi_produit: "Déodorant TROS ROLL ON WHITENING PROTECT soigne la peau délicate de vos aisselles en lui  permettant d’avoir qui  une sensation de fraîcheur toute la journée. TROS WHITENING PROTECT réduit les taches sombre  et éclaircit la peau des aisselles ."+i,
            prix: Math.round(Math.random()*10000)
        }, function (err, results) {
            console.log("OK--"+i);
        });
    }

    res.json({"msg": "ZAY EH"});
}

module.exports = {
    get_all_produit,
    automateAddingProduit
}