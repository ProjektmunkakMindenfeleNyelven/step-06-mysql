// Általunk telepített npm-csomag
const express = require('express');
const {
    getUjkonyv,
    postUjkonyv,
} = require('../controllers/ujKonyvRouteControllers');

// Szerver "alias" létrehozása
const router = express.Router();

router.get('/', getUjkonyv);
router.post('/', postUjkonyv);

// Exportálás
module.exports = router;
