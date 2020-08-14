var http = require('http');
http.createServer(function (req, res) {
	res.write("Hi");
}).listen(8080);