const connection = require("../config/db");

const addLivraison = (livraison, cb) => {
    connection.query(
        "INSERT INTO livraison SET ?",
        livraison,
        function (err, res) {
            if(err) throw err;
            cb(null, res);
        }
    );
}

const findLivraison = (dateLivraison, statusLivraison, cb) => {
    if(statusLivraison == "en_attente") {
        connection.query(
            "SELECT livraison.id_livraison, livraison.com_livr,client.nom_c, client.contact_c, commande.date_commande, commande.code_client, livraison.endroit, produit.code_produit, produit_commande.quantite FROM livraison JOIN commande ON commande.com_livr = livraison.com_livr JOIN produit_commande ON produit_commande.com_livr = commande.com_livr JOIN produit ON produit.code_produit = produit_commande.code_produit JOIN client ON client.code_client = commande.code_client WHERE (livraison.date_livraison = ? AND livraison.status = ?) OR (livraison.date_livraison_reporte = ? AND livraison.status = 'reporte')",
            [dateLivraison, statusLivraison, dateLivraison],
            function (err, res, rows) {
                if(err) throw err;
                cb(null, res);
            }
        );
    } else {
        connection.query(
            "SELECT livraison.id_livraison, livraison.com_livr,client.nom_c, client.contact_c, commande.date_commande, commande.code_client, livraison.endroit, produit.code_produit, produit_commande.quantite FROM livraison JOIN commande ON commande.com_livr = livraison.com_livr JOIN produit_commande ON produit_commande.com_livr = commande.com_livr JOIN produit ON produit.code_produit = produit_commande.code_produit JOIN client ON client.code_client = commande.code_client WHERE livraison.date_livraison = ? AND livraison.status = ?",
            [dateLivraison, statusLivraison],
            function (err, res, rows) {
                if(err) throw err;
                cb(null, res);
            }
        );
    }
    
}

const findLivraisonById = (id_livraison, cb) => {
    connection.query(
        `
        SELECT 
            livraison.heure_debut, 
            livraison.heure_fin, 
            livraison.id_livraison, 
            livraison.date_livraison, 
            livraison.com_livr,
            livraison.status,
            client.nom_c, 
            client.contact_c, 
            commande.date_commande, 
            commande.code_client, 
            livraison.endroit, 
            produit.code_produit, 
            produit.prix,
            produit_commande.quantite, 
            produit.nom_produit, 
            commande.matricule,
            livraison.remarque
        FROM 
            livraison 
        JOIN commande ON commande.com_livr = livraison.com_livr 
        JOIN produit_commande ON produit_commande.com_livr = commande.com_livr 
        JOIN produit ON produit.code_produit = produit_commande.code_produit 
        JOIN client ON client.code_client = commande.code_client 
        WHERE 
            livraison.id_livraison = ?`,
        [id_livraison],
        function (err, res, rows) {
            if(err) throw err;
            cb(null, res);
        }
    );
}

const updateStatusLivraison = (id_livraison, status, motif = null, date_livraison_reporte = null, cb) => {
    connection.query(
        "UPDATE livraison SET status = ?, motif = ?, date_livraison_reporte = ? WHERE id_livraison = ?",
        [status, motif, date_livraison_reporte, id_livraison],
        function (err, res) {
            if(err) throw err;
            cb(null, res);
        }
    )
}

module.exports = {
    addLivraison,
    findLivraison,
    findLivraisonById,
    updateStatusLivraison
};