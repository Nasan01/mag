const { menu } = require("../config/helper");
const clientModel = require("../models/clientModel");
const mysqlPromise = require("mysql2/promise");

const get_count_client = async () => {
    let test = [];
    try {
        test = await clientModel.countAllClient();
    } catch (err) {
        console.log(err);
    }
    return test;
}

const get_all_client = async (req, res) => {
    const { id } = req.params;
    let nbr = 10, id_convert;
    id_convert = parseInt(id);
    let suivant = id_convert * nbr;
    const connectionPromise = await mysqlPromise.createConnection({host:"localhost", user:"root", password:"", database: "magesti"})
    if(req.session.loggedin){
        const menu_link = menu(req.session.matricule);
        clientModel.findWithLimit(suivant, nbr, async function (err, clients) {
            const [results, fields] = await connectionPromise.execute('SELECT count(*) as test FROM client');
            let page_count = results[0].test / nbr;
            res.render('client/index', { 
                title:"clients", 
                matricule: req.session.matricule, 
                menu:menu_link,
                clients: clients,
                page_count: Math.round(page_count),
                id: id_convert
            });  
        });
    } else {
        res.redirect("/personnel/login");
    }
}

const client_by_linkfb = async (req, response) => {
    const menu_link = menu(req.session.matricule);
    const { lienfb_c } = req.body;
    const connectionPromise = await mysqlPromise.createConnection({host:"localhost", user:"root", password:"", database: "magesti"});
    const [results] = await connectionPromise.execute(
        "SELECT discussion.content, discussion.send_time_at, discussion.send_at, discussion.code FROM client JOIN discussion ON client.code_client = discussion.receiver WHERE client.lienfb_c = ?", [lienfb_c]
    );
    clientModel.findClientByLinkFb(lienfb_c, function (err, client) {
        if(err) throw err;
        if(client.length <= 0){
            response.render("client/addNew", {
                title: "taches",
                matricule: req.session.matricule,
                menu: menu_link
            });
        } else {
            response.render("tache/discussion", {
                title: "taches",
                matricule: req.session.matricule,
                menu: menu_link,
                clientsss: client,
                contents: results
            });
        }
    });
}

const add_client = async (req, res) => {
    const {
        nom_c,
        lienfb_c,
        contact_c
    } = req.body;
    const menu_link = menu(req.session.matricule);
    const code_client = "CMT-KOMONE-"+ new Date().getTime();
    const connectionPromise = await mysqlPromise.createConnection({host:"localhost", user:"root", password:"", database: "magesti"});
    const [results] = await connectionPromise.execute(
        "SELECT discussion.content, discussion.send_time_at, discussion.send_at, discussion.code FROM client JOIN discussion ON client.code_client = discussion.receiver WHERE client.lienfb_c = ?", [lienfb_c]
    );
    clientModel.addClient({
        nom_c: nom_c,
        code_client: code_client,
        lienfb_c: lienfb_c,
        contact_c: contact_c,
        ajouter_at: new Date(),
        matricule_p: req.session.matricule
    }, function (err, result) {
        if(err) throw err;
        res.render("tache/discussion", {
            title: "taches",
            matricule: req.session.matricule,
            menu: menu_link,
            clientsss: [{code_client:code_client}],
            contents: results
        });
        console.log("added");
    })
}

const automateAddingClient = (req, res) => {
    for(let i = 0; i < 40; i++){
        clientModel.addClient({
            nom_c: "avo test"+i,
            code_client: "CMT+KOMONE"+i,
            lienfb_c: "https://www.facebook.com/profile.php?id=100021432591694"+i,
            contact_c: "03900000"+i,
            photo_c: "pic"+i,
            ajouter_at: new Date(),
            matricule_p: "VB00001"
        }, function (err, result) {
            console.log("OK " + i);
        });
    }
    res.json({"msg": "zay eh!"})
}

module.exports = {
    get_all_client,
    automateAddingClient,
    client_by_linkfb,
    add_client
}