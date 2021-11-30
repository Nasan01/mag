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
            console.log(results[0].test);
            let page_count = results[0].test / nbr;
            console.log(Math.round(page_count));
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
    automateAddingClient
}