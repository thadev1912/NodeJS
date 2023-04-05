

const sinhvien=require('./sinhvien');
const tintucdatxanh=require('./tintucdatxanh');
const lophoc=require('./lophoc');
function route(app)
{
app.use('/sinhvien',sinhvien);
app.use('/',tintucdatxanh); 
app.use('/tintucdatxanh',tintucdatxanh); 
app.use('/lophoc',lophoc); 
}

module.exports = route;
