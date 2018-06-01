// Node Dependencies
var express = require("express");
var exphbs = require("express-handlebars");

var app = express();

app.use(express.static(__dirname + '/public'));

var PORT = process.env.PORT || 8080;

//handlebars
app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");


var routes = require('./controllers/golf_controllers.js');
app.use('/', routes);

 
app.listen(PORT, function () {
    
    console.log("Server listening on: http://localhost:" + PORT);
});