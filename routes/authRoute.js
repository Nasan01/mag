const express = require("express");

const router = express.Router();
const authController = require("../controllers/authController");

router.get("/login", authController.authLogin_get);
router.post("/authentication", authController.authentication);
router.get("/logout", authController.authLogout);

module.exports = router;