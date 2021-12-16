const express = require("express");
const livraisonController = require("../controllers/livraisonController");
const router = express.Router();

router.post("/addLivraison", livraisonController.addLivraison);
router.get("/", livraisonController.get_view_livraison);
router.post("/byStatus", livraisonController.list_post_livraison);
router.get("/getOne/:id_livraison/:com_livr", livraisonController.getOneLivraison);
router.post("/updateLivraison", livraisonController.updateStatusLivraison);
router.get("/etatLivraison", livraisonController.etatLivraison);

module.exports = router;