const express = require("express");
const { 
    add_discussion, 
    getDiscussionBetween 
} = require("../controllers/discussionController");

const router = express.Router();

router.post("/add", add_discussion);
router.get("/:client", getDiscussionBetween);

module.exports = router;