const { menu } = require("../config/helper");
const mysqlPromise = require("mysql2/promise");

const get_etat_vente = async (req, res) => {
    const connectionPromise = await mysqlPromise.createConnection({host:"localhost", user:"root", password:"", database: "magesti"})
    if(req.session.loggedin) {
        const menu_link = menu(req.session.matricule);
        let month = parseInt(new Date().getMonth()) + 1;
        let totalCa = 0, quantite = 0;
        const date_now = new Date().getFullYear() + "-" + month + "-" + new Date().getDate();
        
        const [results] = await connectionPromise.execute(
            "SELECT commande.date_commande, produit_commande.quantite, produit.prix FROM `commande` JOIN produit_commande ON commande.com_livr = produit_commande.com_livr JOIN produit ON produit.code_produit = produit_commande.code_produit WHERE commande.matricule = ? AND commande.date_commande = ?", 
            [req.session.matricule, date_now]
        );
        results.forEach((result) => {
            totalCa += (result.prix * result.quantite);
            quantite += result.quantite;
        });
        let date_du_jour = new Date().getDate() + " - " + month + " - " + new Date().getFullYear()
        res.render("vente/etat", {
            title: "money",
            menu: menu_link,
            matricule: req.session.matricule,
            date_du_jour: date_du_jour,
            totalCa: totalCa,
            quantite: quantite
        });
    } else {
        res.redirect("/personnel/login");
    }
}

module.exports = {
    get_etat_vente
}