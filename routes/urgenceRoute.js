const express = require("express");
const { 
    getAllUrgenceView, 
    addUrgence, 
    getUrgenceByStatus, 
    traiteUrgence
} = require("../controllers/urgenceController");
const router = express.Router();

router.get("/traite/:id_urgence", traiteUrgence);
router.get("/", getAllUrgenceView);
router.post("/addUrgence", addUrgence);
router.post("/getUrgence", getUrgenceByStatus);

module.exports = router;