const express = require("express");
const { get_all_produit, automateAddingProduit } = require("../controllers/produitController");
const router = express.Router();

router.get("/:id", get_all_produit);

module.exports = router;