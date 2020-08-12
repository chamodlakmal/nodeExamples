var http = require('http');
var mm=require('./exaple3')
http.createServer(function (req,res)
	{
		res.writeHead(200, {'Content-Type': 'text/html'});
		res.write('Today'+mm.myDateTime()+"<br>");
		res.write('Add '+mm.add(2,3));
		res.write('Tax '+mm.taxAdd(1000)+"<br>");
		res.write("<br/>");
		res.end('Time : '+mm.myTime());
	}).listen(8080);
