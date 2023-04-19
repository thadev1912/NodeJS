const db = require('../../../models/index');
const jsonwebtoken = require("jsonwebtoken");
// The secret should be an unguessable long string (you can use a password generator for this!)
const JWT_SECRET =
  "goK!pusp6ThEdURUtRenOwUhAsWUCLheBazl!uJLPlS8EbreWLdrupIwabRAsiBu";
const list_user = async (req, res) => {
   let data = await db.User.findAll();
   console.log(data);
   return res.json({
      data: data,
     
   })
}
const xulydangnhap = async (req, res) => {
   let user = await req.body.username;
   let pass = await req.body.password;
   let data = await db.User.findOne({
      where: {
         username: user, password: pass,
      },
   })
   if (data) {
      res.json({
         data: data,
         status: 200,
         token: jsonwebtoken.sign({ user: "admin" }, JWT_SECRET),
         messege: 'Đăng nhập thành công!!!'
      });
   }
   else {
      res.json({
         data: null,
         status: 404,
         messege: 'Kiểm tra lại tài khoản hoặc mật khẩu!!!'
      });
   }

}
module.exports = {
   xulydangnhap: xulydangnhap,
   list_user: list_user,
}