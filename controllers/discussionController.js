const discussionModel = require("../models/discussionModel");
const mysqlPromise = require("mysql2/promise");

const add_discussion = (req, res) => {
    const {
        code,
        receiver,
        content
    } = req.body;

    let code_insert = parseInt(code);
    discussionModel.addDiscussion({
        sender: req.session.matricule,
        receiver: receiver,
        content: content,
        send_at: new Date(),
        send_time_at: new Date(),
        code: code_insert
    }, function (err, discussion) {
        if(err) throw err;
        console.log("discussion added!");
    });
}

const getDiscussionBetween = (req, res) => {
    const {
        client
    } = req.params;
    let oplg = req.session.matricule;
    discussionModel.getDiscussion(oplg, client, function (err, discussion) {
        if(err) throw err;
        const [rows] = discussion
        res.render("tache/contentDiscussion", {
            contents: rows
        });
    });
}

const addRahaFintinina = async (req, res) => {
    const {
        receiver,
        com_livr
    } = req.body;
    let content = "Raha fintinina ny commande-nao dia : <br />";
    let total = 0;
    let livr_com = com_livr;
    const connectionPromise = await mysqlPromise.createConnection({host:"localhost", user:"root", password:"", database: "magesti"});
    const [results] = await connectionPromise.execute(
        "SELECT livraison.date_livraison, commande.date_commande, produit_commande.quantite, produit.nom_produit, produit.prix FROM commande JOIN livraison ON commande.com_livr = livraison.com_livr JOIN produit_commande ON produit_commande.com_livr = commande.com_livr JOIN produit ON produit.code_produit = produit_commande.code_produit WHERE commande.com_livr = ?",
        [livr_com]
    );
    results.forEach((result) =>{
        content += "produit : "+result.nom_produit+", Isany : " + result.quantite +", amin'ny vidiny : "+ result.prix +"<br>";
        total += parseInt(result.prix)*parseInt(result.quantite);
    });
    content += "<br> Totaliny : " + total + " Ariary <br>";

    discussionModel.addDiscussion({
        sender: req.session.matricule,
        receiver: receiver,
        content: content,
        send_at: new Date(),
        send_time_at: new Date(),
        code: 1
    }, function (err, discussion) {
        if(err) throw err;
        console.log("Raha fintinina added!!");
        res.redirect('/');
    });
}

module.exports = {
    add_discussion,
    getDiscussionBetween,
    addRahaFintinina
}