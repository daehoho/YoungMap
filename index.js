var express = require('express');
var app = express();
var config = require('./config.json');
var router = require('./router/main')(app, config);

app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.engine('html', require('ejs').renderFile);
app.use('/js', express.static(__dirname + '/node_modules/jquery/dist')); 


var server = app.listen(3000, function(){
    console.log("Express server has started on port 3000")
});