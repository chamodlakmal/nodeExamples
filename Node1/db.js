var http = require('http');
var mysql = require('mysql');
var con = mysql.createConnection({
	host: "localhost",
	user: "root",
	password: "",
	database: "farmacydb"

});
http.createServer(
	function (req, res) {
		con.connect(function (err) {
			if (err) throw err;
			var sql = "SELECT * FROM user";
			con.query(sql, function (err, result) {
				if (err) throw err;
				res.write(JSON.stringify(result));
				res.end();
			});

		});
	}
).listen(7070);