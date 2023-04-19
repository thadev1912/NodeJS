

const sinhvien=require('./sinhvien');
const tintucdatxanh=require('./tintucdatxanh');
const lophoc=require('./lophoc');
const user=require('./user');
function route(app)
{
app.use('/user',user); 
app.use('/sinhvien',sinhvien);
app.use('/',tintucdatxanh); 
app.use('/tintucdatxanh',tintucdatxanh); 
app.use('/lophoc',lophoc); 

}

module.exports = route;
