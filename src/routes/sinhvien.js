var express = require('express');
var router = express.Router();
const sinhvien = require('../app/Controllers/SinhvienController');

/* GET users listing. */
router.get('/', sinhvien.index);
router.get('/them', sinhvien.create);
router.post('/luu', sinhvien.store);
router.get('/sua/:id', sinhvien.edit);
router.post('/capnhat', sinhvien.update);
router.get('/xoa/:id', sinhvien.destroy);


module.exports = router;
