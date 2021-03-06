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

const getOneProduit = (req, res) => {
    const { id } = req.params;
    let id_produit = parseInt(id);
    if(req.session.matricule) {
        const menu_link = menu(req.session.matricule);
        produitModel.findOneProduit(id_produit, function (err, produits) {
            if(err) throw err;
            res.render("produit/detail", {
                title: "produits",
                matricule: req.session.matricule,
                menu: menu_link,
                produits: produits
            }); 
        });
    } else {
        res.redirect("/personnel/login");
    }
}

const addNewProduit = (req, res, next) => {
    const {
        code_produit,
        nom_produit,
        prix,
        description_produit,
        moded_emploi_produit,
        id_categorie
    } = req.body;
    let id_convert = parseInt(id_categorie);
    produitModel.addProduit({
        code_produit,
        nom_produit,
        prix,
        description_produit,
        moded_emploi_produit,
        photo_produit: req.file.filename,
        id_categorie: id_convert
    }, function (err, produit) {
        if(err) throw err;
        req.flash("success", "Produits bien ajouter!!!");
        res.redirect("/produits/0");
    });
}

const automateAddingProduit = (req, res) => {
    for(let i = 0; i < 50; i++) {
        let co = Math.round(Math.random()*100);
        produitModel.addProduit({
            code_produit: "PRO0" + co,
            nom_produit: "DEO-TEST-"+i,
            photo_produit: "PRO0" + co,
            description_produit: "D??odorant TROS ROLL ON WHITENING PROTECT "+i+i,
            moded_emploi_produit: "D??odorant TROS ROLL ON WHITENING PROTECT soigne la peau d??licate de vos aisselles en lui  permettant d???avoir qui  une sensation de fra??cheur toute la journ??e. TROS WHITENING PROTECT r??duit les taches sombre  et ??claircit la peau des aisselles ."+i,
            prix: Math.round(Math.random()*10000)
        }, function (err, results) {
            console.log("OK--"+i);
        });
    }

    res.json({"msg": "ZAY EH"});
}

module.exports = {
    get_all_produit,
    automateAddingProduit,
    getOneProduit,
    addNewProduit
}