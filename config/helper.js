const menu = (matricule) => {
    if(matricule){   
        const vbMenu = [
            {link: "/", content: "Accueil", icons: "fa fa-home", active: "home"},
            {link: "/clients/0", content: "Clients", icons: "fa fa-users", active: "clients"},
            {link: "/taches", content: "Tache", icons: "fa fa-tasks", active: "taches"},
            {link: "/produits/0", content: "Produits", icons: "fa fa-product-hunt", active: "produits"},
            {link: "#", content: "Etat de vente", icons: "fa fa-money", active: "money"},
        ];
        const scMenu = [];
        return matricule[0] + matricule[1] === "VB" ? vbMenu : scMenu;
    }
    return [];
}

module.exports = {
    menu
}