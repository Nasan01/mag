const express = require('express');
const { get_tache } = require('../controllers/tacheController');
const router = express.Router();

router.get("/", get_tache);

module.exports = router;