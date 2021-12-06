const { menu } = require("../config/helper");
const livraisonModel = require("../models/livraisonModel");
const mysqlPromise = require("mysql2/promise");

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

const get_view_livraison = async (req, res) => {
    
    let month = parseInt(new Date().getMonth()) + 1;
    const date_now = new Date().getFullYear() + "-" + month + "-" + new Date().getDate();
    let caLivre = 0, pLivre = 0;
    let caEnAttente = 0, pEnAttente = 0;
    let caReporte = 0, pReporte = 0;
    let caAnnule = 0, pAnnule = 0;
    const connectionPromise = await mysqlPromise.createConnection({host:"localhost", user:"root", password:"", database: "magesti"});
    if(req.session.matricule) {
        const menu_link = menu(req.session.matricule);
        const livre = await connectionPromise.execute(
            "SELECT produit_commande.quantite, produit.code_produit, produit.prix FROM livraison JOIN commande ON commande.com_livr = livraison.com_livr JOIN produit_commande ON produit_commande.com_livr = commande.com_livr JOIN produit ON produit.code_produit = produit_commande.code_produit WHERE livraison.date_livraison = ? AND livraison.status = ?",
            [date_now, "livre"]
        );
        const en_attente = await connectionPromise.execute(
            "SELECT produit_commande.quantite, produit.code_produit, produit.prix FROM livraison JOIN commande ON commande.com_livr = livraison.com_livr JOIN produit_commande ON produit_commande.com_livr = commande.com_livr JOIN produit ON produit.code_produit = produit_commande.code_produit WHERE (livraison.date_livraison = ? AND livraison.status = ?) OR (livraison.date_livraison_reporte = ? AND livraison.status = 'reporte')",
            [date_now, "en_attente", date_now]
        );
        const reporte = await connectionPromise.execute(
            "SELECT produit_commande.quantite, produit.code_produit, produit.prix FROM livraison JOIN commande ON commande.com_livr = livraison.com_livr JOIN produit_commande ON produit_commande.com_livr = commande.com_livr JOIN produit ON produit.code_produit = produit_commande.code_produit WHERE livraison.date_livraison = ? AND livraison.status = ?",
            [date_now, "reporte"]
        );
        const annule = await connectionPromise.execute(
            "SELECT produit_commande.quantite, produit.code_produit, produit.prix FROM livraison JOIN commande ON commande.com_livr = livraison.com_livr JOIN produit_commande ON produit_commande.com_livr = commande.com_livr JOIN produit ON produit.code_produit = produit_commande.code_produit WHERE livraison.date_livraison = ? AND livraison.status = ?",
            [date_now, "annule"]
        );
        livre[0].forEach((l) => {
            caLivre += (l.quantite * l.prix);
            pLivre += l.quantite
        });
        en_attente[0].forEach((l) => {
            caEnAttente += (l.quantite * l.prix);
            pEnAttente += l.quantite
        });
        reporte[0].forEach((l) => {
            caReporte += (l.quantite * l.prix);
            pReporte += l.quantite
        });
        annule[0].forEach((l) => {
            caAnnule += (l.quantite * l.prix);
            pAnnule += l.quantite
        });

        livraisonModel.findLivraison(date_now, "en_attente", function (err, livraisons) {
            res.render("livraison/index", {
                title: "livraisons",
                matricule: req.session.matricule,
                menu: menu_link,
                livre: [caLivre, pLivre],
                en_attente: [caEnAttente, pEnAttente],
                reporte: [caReporte, pReporte],
                annule: [caAnnule, pAnnule],
                livraisons: livraisons
            });
        });
        
    } else {
        res.redirect("/personnel/login");
    }
}

const list_post_livraison = (req, res) => {
    const { status } = req.body;
    let month = parseInt(new Date().getMonth()) + 1;
    const date_now = new Date().getFullYear() + "-" + month + "-" + new Date().getDate();
    let bgColor = "", btnColor = "";
    switch (status) {
        case "en_attente":
            bgColor = "bg-primary";
            btnColor = "btn btn-primary";
            break;
        case "livre":
            bgColor = "bg-success";
            btnColor = "btn btn-success";
            break;
        case "reporte":
            bgColor = "bg-warning";
            btnColor = "btn btn-warning";
            break;
        case "annule":
            bgColor = "bg-danger";
            btnColor = "btn btn-danger";
        break;
    
        default:
            break;
    }
    livraisonModel.findLivraison(date_now, status, function (err, livraisons) {
        res.render("livraison/tabLivraison", {
            matricule: req.session.matricule,
            livraisons: livraisons,
            color: [bgColor, btnColor],
            status: status
        });
    });
}

const getOneLivraison = (req, res) => {
    const {
        id_livraison,
        com_livr
    } = req.params;
    const id_find = parseInt(id_livraison);
    let totalCa = 0;
    if(req.session.matricule) {
        const menu_link = menu(req.session.matricule);
        livraisonModel.findLivraisonById(id_find, function (err, livraisons) {
            if(err) throw err;
            livraisons.forEach((l) => {
                totalCa += (l.prix * l.quantite);
            });
            const statusCheck = (livraisons[0].status == "en_attente") ? "en_attente" : "" ;
            res.render("livraison/traitement", {
                title: "livraisons",
                matricule: req.session.matricule,
                menu: menu_link,
                livraisons: livraisons,
                totalCa: totalCa,
                statusCheck: statusCheck
            });
        })
    } else {
        res.redirect("/personnel/login")
    }
}

const updateStatusLivraison = (req, res) => {
    const {
        id_livraison,
        status,
        date_livraison_reporte,
        motif
    } = req.body;
    let id_up = parseInt(id_livraison);
    if(!date_livraison_reporte){
        date_livraison_reporte_up = null;
    } else {
        date_livraison_reporte_up = date_livraison_reporte;
    }
    if(!motif){
        motif_up = null;
    } else {
        motif_up = motif;
    }
    livraisonModel.updateStatusLivraison(id_up, status, motif_up, date_livraison_reporte_up, function (err, livraison) {
        if(err) throw err;
        res.redirect("/livraisons"); 
    });
}

module.exports = {
    addLivraison,
    get_view_livraison,
    list_post_livraison,
    getOneLivraison,
    updateStatusLivraison
}