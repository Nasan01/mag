const { menu } = require("../config/helper");


const get_tache = (req, res) => {
    if(req.session.loggedin){
        const menu_link = menu(req.session.matricule);
        res.render('tache/index', { 
            title:"taches", 
            matricule: req.session.matricule, 
            menu:menu_link,
        });  
    } else {
        res.redirect("/personnel/login");
    }
}

module.exports = {
    get_tache
}