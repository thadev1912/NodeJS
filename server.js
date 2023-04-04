const express = require('express');
const app = express();
const port = 3000;
const route = require('./src/routes/index');
const handlebars = require('express-handlebars');;
const path = require('path');
const connectDB = require('./config');
const bodyParser = require("body-parser");
//const db=require('../../../config');
app.use(express.static(path.join(__dirname, 'public'))); // cần check lại link css  
app.use(express.json())  // hỗ trợ json
app.use(bodyParser.urlencoded({ extended: true }));  // dùng để res.body
route(app);
connectDB();
app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})

//Templete Engine

app.engine('hbs', handlebars.engine({
  extname: '.hbs',
  //code để render re view handlebars
  runtimeOptions: {
    allowProtoPropertiesByDefault: true,
    allowProtoMethodsByDefault: true
  },


},
));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'src/resources/views'));// check đường dẫn để điều hướng sang thu mục view
//midleware
app.use(bodyParser.urlencoded({ extended: false })); // check dữ liệu submit từ client lên server dùng trong query.body
app.use(express.json())