var mysql = require('mysql');

exports.hentskibinfo = function (req, res) {
    //Laver connection til DB 
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "password"
    });
    con.connect(function (err) {
        //Tjekker for fejl, hvis ingen fejl skriver connected. 
        if (err) throw err;
        console.log("Connected!");
        con.query("use db_twinships;", function (err, result) {
            if (err) throw err;
            console.log("connected");
        });
        con.query("select * from table_skibinfo;", function (err, result) {
            if (err) throw err;
            console.log("All selected");
            res.send(result);
            console.log("virker med hentning af skibinfo")
        });
    });

}
exports.hentskibdata = function (req, res) {
    console.log("HER SKRIVER DEN DET"+req.body.skibidnr+"")
    //Laver connection til DB 
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "password"
    });
        con.connect(function (err) {
        //Tjekker for fejl, hvis ingen fejl skriver connected. 
        if (err) throw err;
        console.log("Connected!");
        con.query("use db_twinships;", function (err, result) {
            if (err) throw err;
            console.log("connected");
        });
            con.query("SELECT * FROM table_skibdata WHERE skib_id = '"+req.body.skibidnr+"' ORDER BY skib_log_id DESC LIMIT 1", function (err, result) {

            if (err) throw err;
            console.log("result fra serveren hentskibdata " + result);
            console.log("All selected");
            res.send(result);
            console.log("virker med hentning af skibdata")
        });
    });

}

exports.opretskibinfo = function (req, res) {
    //Laver connection til DB 
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "password"
    });
    //get request, hent informationen 
    con.connect(function (err) {
        //Tjekker for fejl, hvis ingen fejl skriver connected. 
        if (err) throw err;
        console.log("Connected!");
        con.query("use db_twinships;", function (err, result) {
            if (err) throw err;
            console.log("connected");
        });
        con.query("INSERT INTO table_skibinfo(skib_navn, skib_hjemhavn, skib_kaldesignal, skib_MMSI, skib_anvendelse, skib_BRT_BT_TONS, skib_længde, skib_max_crew)values('" + req.body.skib_navn + "','" + req.body.skib_hjemhavn + "','" + req.body.skib_kaldesignal + "',' + req.body.skib_MMSI + ','" + req.body.skib_anvendelse + "'," + req.body.skib_BRT_BT_TONS + "," + req.body.skib_længde + "","" + req.body.skib_max_crew + ")", function (err, result) {
            if (err) throw err;
            console.log("Inserted skib_data about " + req.body.skib_navn + " into mysql db");
            res.send(result);
        });
    });
}

exports.opretskibdata = function (req, res) {
    //Laver connection til DB 
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "password"
    });
    //get request, hent informationen 
    con.connect(function (err) {
        //Tjekker for fejl, hvis ingen fejl skriver connected. 
        if (err) throw err;
        console.log("Connected!");
        con.query("use db_twinships;", function (err, result) {
            if (err) throw err;
            console.log("connected");
        });
        con.query("insert into table_skibdata(skib_id, skib_fart, skib_kurs, skib_GPS_N, skib_GPS_E, skib_vindretning, skib_vindstyrke, skib_Otemp, skib_motor01_omdrejninger, skib_motor02_omdrejninger)values(" + req.body.skib_id + "," + req.body.skib_fart + "," + req.body.skib_kurs + ",'" + req.body.skib_GPS_N + "','" + req.body.skib_GPS_E + "'," + req.body.skib_vindretning + "," + req.body.skib_vindstyrke + "," + req.body.skib_Otemp + "," + req.body.skib_motor01_omdrejninger + "," + req.body.skib_motor02_omdrejninger + ")", function (err, result) {
            if (err) throw err;
            console.log("Inserted kontoinfo about " + req.body.skib_id + " into mysql db");
            res.send(result);
        });
    });
}
