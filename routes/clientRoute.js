const express = require("express");
const cors = require("cors");
const { 
    get_all_client,
    automateAddingClient, 
    client_by_linkfb, 
    add_client
} = require("../controllers/clientController");
const router = express.Router();

router.get("/:id", get_all_client);
router.post("/check", client_by_linkfb);
router.post("/add", add_client);

module.exports = router;