const express = require("express");
const cors = require("cors");
const { 
    get_all_client,
    automateAddingClient, 
    client_by_linkfb 
} = require("../controllers/clientController");
const router = express.Router();

router.get("/:id", get_all_client);
router.post("/check", client_by_linkfb);

module.exports = router;