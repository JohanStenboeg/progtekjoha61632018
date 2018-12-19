//Til at åbne serveren
var app = require('express')();
var bcrypt = require('bcrypt-nodejs');
//Åbner serveren, ud fra express app. 
var http = require('http').Server(app);
//Til Json objekter, går at serveren kan læse json objekterne agtigt.
//Parser det om til læseligt JSON objekter for serveren. 
bodyParser = require('body-parser');

//HUSK AT BRUGE BODYPARSER TIL POST REQUESTS
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());

//require mysql
var mysql = require('mysql');

//get request
app.get('/', function (req, res) {
    res.sendFile(__dirname + '/forside.html');
})
//get request
app.get('/login', function (req, res) {
    res.sendFile(__dirname + '/login.html');
})
//get request
app.get('/homepage', function (req, res) {
    res.sendFile(__dirname + '/forside.html');
})

var route = require('./route/routes')
route(app)



//starter serveren på port 8080
http.listen(8080, function () {
    console.log('listening on *:8080');
})