var http=require('http');
var uc=require('upper-case');
http.createServer(
		function (req,res){
			res.write(uc("Chamod Lakmal"));
			res.end();
		}
	).listen(8080);