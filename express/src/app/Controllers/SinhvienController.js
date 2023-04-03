//const db=require('../../../config');
 let sinhvien=(req,res)=> {
 
      var sql=`SELECT * from demo`;
      db.query(sql, (err,rows) => {
       
       if(!err)
       {   
        //res.send({rows});// cách gọi ra json
         return res.render('sinhvien/sinhvien',{rows});      
       }
       else
       {
        return console.log(err);
       }
      });
    }     
    let them_sinhvien = (req,res) => {
       return res.render('sinhvien/themsinhvien');
       
      }
     let luu_sinhvien = (req,res)=>      {
      return req.txt_hoten;
      // console.log(data);
      }

module.exports = {  
  sinhvien:sinhvien,
  them_sinhvien:them_sinhvien,
  luu_sinhvien:luu_sinhvien,
};
//module.exports=new SinhvienController;