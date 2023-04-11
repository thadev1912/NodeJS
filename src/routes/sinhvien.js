var express = require('express');
var router = express.Router();
const sinhvien = require('../app/Controllers/SinhvienController'); 
const validate=require('../../request/validate_sinhvien');
/* GET users listing. */
router.get('/', sinhvien.index);
router.get('/them', sinhvien.create);
router.post('/luu',validate.validate_sinhvien(), sinhvien.store);
router.get('/sua/:id', sinhvien.edit);
router.post('/capnhat', sinhvien.update);
router.get('/xoa/:id', sinhvien.destroy);
router.post('/timkiem', sinhvien.search);
router.get('/get_api', sinhvien.get_api);

module.exports = router;
