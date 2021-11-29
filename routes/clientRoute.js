const express = require("express");
const { get_all_client, automateAddingClient } = require("../controllers/clientController");
const router = express.Router();

router.get("/:id", get_all_client);

module.exports = router;