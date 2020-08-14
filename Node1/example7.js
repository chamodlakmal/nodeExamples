var http = require('http');
var url = require('url');
http.createServer(
	function (req, res) {
		var q = url.parse(req.url, true).query;
		res.write("Year = " + q.year);
		res.write("Month = " + q.month);
		res.end();
	}
).listen(8080);