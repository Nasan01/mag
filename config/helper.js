const menu = (matricule) => {
    if(matricule){   
        const vbMenu = [
            {link: "/", content: "Accueil", icons: "fa fa-home", active: "home"},
            {link: "/clients/0", content: "Clients", icons: "fa fa-users", active: "clients"},
            {link: "/taches", content: "Tache", icons: "fa fa-tasks", active: "taches"},
            {link: "/produits/0", content: "Produits", icons: "fa fa-cubes", active: "produits"},
            {link: "/etatVente", content: "Etat de vente", icons: "fa fa-money", active: "money"},
            {link: "/urgence", content: "urgence", icons: "fa fa-warning", active: "urgence"},
        ];
        const scMenu = [
            {link: "/", content: "Accueil", icons: "fa fa-home", active: "home"},
            {link: "/clients/0", content: "Clients", icons: "fa fa-users", active: "clients"},
            {link: "/livraisons", content: "Tache", icons: "fa fa-car", active: "livraisons"},
            {link: "/produits/0", content: "Produits", icons: "fa fa-cubes", active: "produits"},
            {link: "/livraisons/etatLivraison", content: "Etat de Livraison", icons: "fa fa-truck", active: "money"},
            {link: "/urgence", content: "Urgence", icons: "fa fa-warning", active: "urgence"},
        ];
        return matricule[0] + matricule[1] === "VB" ? vbMenu : scMenu;
    }
    return [];
}

module.exports = {
    menu
}