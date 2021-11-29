const menu = (matricule) => {
    const vbMenu = [
        {link: "/", content: "Accueil", icons: "fa fa-home", active: "home"},
        {link: "/clients/0", content: "Listes des clients", icons: "fa fa-users", active: "clients"},
        {link: "#", content: "Tache", icons: "fa fa-tasks", active: "tache"},
        {link: "#", content: "Produits", icons: "fa fa-product-hunt", active: "produits"},
        {link: "#", content: "Etat de vente", icons: "fa fa-money", active: "money"},
    ];
    const scMenu = [];
    return matricule[0] + matricule[1] === "VB" ? vbMenu : scMenu;
}

module.exports = {
    menu
}