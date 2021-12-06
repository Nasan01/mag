const express = require("express");
const livraisonController = require("../controllers/livraisonController");
const router = express.Router();

router.post("/addLivraison", livraisonController.addLivraison);
router.get("/", livraisonController.get_view_livraison);
router.post("/byStatus", livraisonController.list_post_livraison);

module.exports = router;