var http=require('http');
http.createServer(function (req,res)
	{
		switch(req.url) {
		  case '/student':
		    	res.write("{'id':'1','name':'Chamod Lakmal','tp':'0717865316'}");
		    break;
		  case '/course':
		    	res.write("{'id':'1','name':'Chamod Lakmal'}");
		    break;
		  
		}
		res.end();
	}).listen(8080);

