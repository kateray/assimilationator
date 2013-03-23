(function() {

  var express = require("express");
  var http = require("http");

  var app = express();

  app.set('views', __dirname + '/views');

  app.set('view engine', 'jade');

  app.use(require('connect-assets')());

  app.get("/", function(req, res) {
    return res.render('layout', {
      title: 'Home'
    });
  });

  var port = process.env.PORT || 5000;

  http.createServer(app).listen(port, function() {
    return console.log("Express server listening on port 5000");
  });

}).call(this);