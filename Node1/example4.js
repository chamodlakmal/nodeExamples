var http = require('http');
http.createServer(
	function (req, res) {
		res.writeHead(200, { 'Content-type': 'application/json' });
		res.write("{'id':'1','name':'Chamod Lakmal','tp':'0717865316'}");//object
		res.write([{ 'sid': '1', 'in_time': '1:04 pm', 'out_time': '1:04 pm' }, { 'sid': '1', 'in_time': '1:04 pm', 'out_time': '1:04 pm' }, { 'sid': '1', 'in_time': '1:04 pm', 'out_time': '1:04 pm' }]);//array off objects
		res.end();
	}
).listen(8080);