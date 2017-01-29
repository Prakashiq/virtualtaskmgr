var express = require('express');
var path = require('path');
//var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var passport = require('passport');
var flash    = require('connect-flash');
var session = require('express-session');
var morgan  = require('morgan');



var standup = require('./src/routes/standup');
var card    = require('./src/routes/card');
var index   = require('./src/routes/index');

var mongoose = require('mongoose');

mongoose.connect('mongodb://localhost:30000/project');

var app = express();
var swig = require('swig');

// view engine setup

app.engine('swig', swig.renderFile);
app.set('view engine', 'swig');
app.set('views', path.join(__dirname, './src/views'));


// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(flash());



app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({secret: 'mysecret',    resave: true,
    saveUninitialized: true}));

app.use(function(req, res, next) {
  res.locals.message = req.flash();
  next();
});

require('./src/config/passport')(app);



app.use('/standup', standup);
app.use('/card',card);
app.use('/',index);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  console.log(err);
  res.render('error',err);
});

module.exports = app;
