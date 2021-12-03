const express = require("express");
const { 
    add_discussion, 
    getDiscussionBetween ,
    addRahaFintinina
} = require("../controllers/discussionController");

const router = express.Router();

router.post("/add", add_discussion);
router.post("/addRahaFintinina", addRahaFintinina);
router.get("/:client", getDiscussionBetween);

module.exports = router;