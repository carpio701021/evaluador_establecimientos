var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');


//libreria de manejo de sessiones
var sessions = require('client-sessions');


var admin = require('./routes/admin');
var login = require('./routes/login');
var usuario_final = require('./routes/usuario_final');
var usuario_admin = require('./routes/usuario_admin');


var app = express();


//session de usuarios
app.use(sessions({
  cookieName: 'user_session',
  secret: 'aT4023=DIj0230ij=S_jFeHf-fwe', //contraseña de encriptamiento de la cookie
  duration: 1 * 60 * 60 * 1000, //duracion de la cookie 1 hora (sesion)
  activeDuration: 30 * 60 * 1000 //re activacion de la duracion cookie 30 minutos
}));

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use('/admin', admin);
app.use('/usuario_admin', usuario_admin);
app.use('/', usuario_final);
app.use('/login', login);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});


module.exports = app;
