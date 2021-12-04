const express = require("express");
const { get_etat_vente } = require("../controllers/etatVenteController");

const router = express.Router();

router.get("/", get_etat_vente);

module.exports = router;