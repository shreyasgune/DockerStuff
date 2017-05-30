//Dependencies
var express = require('express');

//MongoDB
//mongoose.connect('mongodb://localhost/rest_test');

//Express
var app = express();

app.get('/', function(req,res){
    res.send('Rest API under construction');
});


//Routes
//app.use('/api', require('./routes/api'));



//Start Server
app.listen(3200);
console.log('API is running on 3200');
