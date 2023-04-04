const db = require('../../../models/index')

let index = async (req, res) => {

  try {
    let sinhvien = await db.Sinhvien.findAll();
    //console.log(sinhvien);
    res.render('sinhvien/sinhvien', { sinhvien });
  }
  catch (e) {
    console.log(e);
  }
}
let create = async (req, res) => {
  return res.render('sinhvien/them_sinhvien');
}
let store = async (req, res) => {
  //console.log(req.body);
  try {
    let sinhvien = db.Sinhvien.create({
      ma_sv: req.body.txt_ma_sv,
      ten_sv: req.body.txt_ten_sv,
      ngaysinh_sv: req.body.txt_ngaysinh_sv,
      gioitinh_sv: req.body.txt_gioitinh_sv,
      diachi_sv: req.body.txt_diachi_sv,
      sdt_sv: req.body.txt_sdt_sv,
      ma_lop: req.body.txt_malop,
    });
    if (sinhvien) {
      console.log('Thêm Dữ Liệu Thành Công!!!');
      return res.redirect('/sinhvien');
    }
    else {
      console.log('Lỗi Kết Nối!!!');
    }
  }
  catch (e) {
    console.log(e);
  }
};
let edit = async (req, res) => {
  //console.log(req.params.id);
  let id = req.params.id;
  try {
    let sinhvien = await db.Sinhvien.findOne({
      where: { id: id },
      raw: true,
    });
    if (sinhvien) {
      console.log('Lấy dữ liệu thành công!!!');
      console.log(sinhvien);
      return res.render('sinhvien/sua_sinhvien', { sinhvien });
    }
    else {
      console.log('Lỗi kết nối dữ liệu!!!');
    }
  }
  catch (e) {
    console.log(e);
  }

};
let update = async(req,res) =>{
  //console.log(req.body.txt_id);
  let id =req.body.txt_id;
  try
  {
  // check id trong CSDL
  let exits_id =await db.Sinhvien.findOne({
    where:{id:id},
      })
    if(exits_id)
    {
      let sinhvien = await db.Sinhvien.update({
        ma_sv: req.body.txt_ma_sv,
        ten_sv: req.body.txt_ten_sv,
        ngaysinh_sv: req.body.txt_ngaysinh_sv,
        gioitinh_sv: req.body.txt_gioitinh_sv,
        diachi_sv: req.body.txt_diachi_sv,
        sdt_sv: req.body.txt_sdt_sv,
        ma_lop: req.body.txt_malop,
      },
      {
        where: { id: id },
     });
      
      if(sinhvien)
      {
        console.log('Cập nhật dữ liệu thành công!!');
        return res.redirect('/sinhvien');
      }
      else
      {
        console.log('Vui lòng kiểm tra kết nối!!');
      }
    }
    else
    {
      console.log('ID này không tồn tại trong hệ thống!!!');
    }
  }
  catch(e)
  {
    console.log(e);
  }
}
let destroy = async (req, res) => {
  let id = req.params.id;
  try {
    let sinhvien = await db.Sinhvien.destroy({
      where: { id: id },
      raw: true,
    });
    if (sinhvien) {
      console.log('Xóa dữ liệu thành công!!!');
      res.redirect('/sinhvien');
    }
    else {
      console.log('Lỗi kết nối!!!');
    }
  }
  catch (e) {
    console.log(e);
  }
}
module.exports =
{
  index: index,
  create: create,
  store: store,
  edit: edit,
  update: update,
  destroy: destroy,
};