const express = require("express");
const livraisonController = require("../controllers/livraisonController");
const router = express.Router();

router.post("/addLivraison", livraisonController.addLivraison);
router.get("/", livraisonController.get_view_livraison);

module.exports = router;