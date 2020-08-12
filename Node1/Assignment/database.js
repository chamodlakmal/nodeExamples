var http=require('http');
var mysql=require('mysql');
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database:"dbcarsale"

  });
  http.createServer(
    function (req,res)
    {
        switch(req.url) {
            case '/brand':
                con.connect(function(err) {
                    if (err) throw err;
                    var sql="SELECT * FROM brand";
                    con.query(sql,function (err,result){
                            if(err) throw err;
                            res.write(JSON.stringify(result));
                            res.end();
                    });
                    
                  });
              break;
            case '/car':
                con.connect(function(err) {
                    if (err) throw err;
                    var sql="SELECT * FROM car";
                    con.query(sql,function (err,result){
                            if(err) throw err;
                            res.write(JSON.stringify(result));
                            res.end();
                    });
                    
                  });
              break;
            case '/fuel_type':
                    con.connect(function(err) {
                        if (err) throw err;
                        var sql="SELECT * FROM fuel_type";
                        con.query(sql,function (err,result){
                                if(err) throw err;
                                res.write(JSON.stringify(result));
                                res.end();
                        });
                        
                      });
            break;
            case '/model':
                    con.connect(function(err) {
                        if (err) throw err;
                        var sql="SELECT * FROM model";
                        con.query(sql,function (err,result){
                                if(err) throw err;
                                res.write(JSON.stringify(result));
                                res.end();
                        });
                        
                      });
            break;
            case '/user':
                    con.connect(function(err) {
                        if (err) throw err;
                        var sql="SELECT * FROM user";
                        con.query(sql,function (err,result){
                                if(err) throw err;
                                res.write(JSON.stringify(result));
                                res.end();
                        });
                        
                      });
            break;
            default:
                res.write('Invalid Input');
          }
        
    }
).listen(8080);