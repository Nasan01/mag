const express = require("express");
const { 
    get_all_produit, 
    automateAddingProduit, 
    getOneProduit, 
    addNewProduit 
} = require("../controllers/produitController");
const router = express.Router();
const multer = require('multer');
const path = require("path");
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, "public/images/upload/produit");
    },
    filename: function (req, file, cb) {
        cb(null, file.fieldname+'-'+Date.now()+path.extname(file.originalname));
    }
});
const upload = multer({storage:storage});

router.get("/:id", get_all_produit);
router.get("/detail/:id", getOneProduit);
router.post("/add", upload.single("photo_produit"), addNewProduit);

module.exports = router;