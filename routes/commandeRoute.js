const express = require("express");
const router = express.Router();
const commandeController = require("../controllers/commandeController");

router.post("/addProduitCommande", commandeController.addCommande);

module.exports = router;