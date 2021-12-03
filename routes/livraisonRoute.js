const express = require("express");
const livraisonController = require("../controllers/livraisonController");
const router = express.Router();

router.post("/addLivraison", livraisonController.addLivraison);

module.exports = router;