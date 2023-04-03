var express = require('express');
var router = express.Router();
const sinhvien = require('../app/Controllers/SinhvienController');

/* GET users listing. */
router.get('/', sinhvien.sinhvien);
router.get('/themsinhvien', sinhvien.them_sinhvien);
router.post('/luusinhvien', sinhvien.luu_sinhvien);



module.exports = router;
