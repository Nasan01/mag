const { menu } = require("../config/helper");
const urgenceModel = require("../models/urgenceModel");

const getAllUrgenceView = (req, res) => {
    const { status } = req.params;
    if(req.session.matricule){
        const menu_link = menu(req.session.matricule);
        res.render("urgence/index", {
            title:"urgence", 
            matricule: req.session.matricule, 
            menu:menu_link
        });
    } else {
        res.redirect('/personnel/login');
    }
}

const addUrgence = (req, res) => {
    const { code_urgence, contenu } = req.body;
    urgenceModel.createUrgence(
        {
            code_urgence: code_urgence,
            contenu_urgence: contenu,
            sender_urgence: req.session.matricule,
            send_at: new Date(),
            send_time_at: new Date(),
            status: "en_cours"
        },
        function (err, urgence) {
            if(err) throw err;
            req.flash("success", "Urgence bien Créer!!!!");
            res.redirect("/urgence");
        }
    )
}

const getUrgenceByStatus = (req, res) => {
    const { status } = req.body;
    urgenceModel.findUrgenceByStatus(status, function (err, urgence) {
        if(err) throw err;
        res.render("urgence/listing", {
            urgences: urgence,
            status: status
        });
    });
}

const traiteUrgence = (req, res) => {
    const {id_urgence} = req.params;
    const id_convert = parseInt(id_urgence);

    urgenceModel.updateUrgence(
        req.session.matricule,
        new Date(),
        new Date(),
        "traiter",
        id_convert, 
        function (err, urgence) {
            if(err) throw err;
            req.flash("success", "L'urgece est bien traité");
            res.redirect("/urgence");
        }
    )
}

module.exports = {
    getAllUrgenceView,
    addUrgence,
    getUrgenceByStatus,
    traiteUrgence
}