

const sinhvien=require('./sinhvien');
const tintucdatxanh=require('./tintucdatxanh');
function route(app)
{
app.use('/sinhvien',sinhvien); 
app.use('/tintucdatxanh',tintucdatxanh); 
}

module.exports = route;
