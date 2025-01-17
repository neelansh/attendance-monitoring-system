var express             = require('express');
var path                = require('path');
var favicon             = require('serve-favicon');
var logger              = require('morgan');
var cookieParser        = require('cookie-parser');
var bodyParser          = require('body-parser');
var expressValidator    = require('express-validator');
var flash               = require('connect-flash');
var session             = require('express-session');
var passport            = require('passport');
var LocalStrategy       = require('passport-local').Strategy;
var methodOverride      = require('method-override');
var multer              = require("multer");
var upload              = multer({ dest: 'public/test_images' });

//Env File
require('dotenv').config();
var routes = require('./routes/index');
// var users = require('./routes/users');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(methodOverride("_method"));

//Express validator
app.use(expressValidator({
  errorFormatter: function(param, msg, value) {
      var namespace = param.split('.')
      , root    = namespace.shift()
      , formParam = root;

    while(namespace.length) {
      formParam += '[' + namespace.shift() + ']';
    }
    return {
      param : formParam,
      msg   : msg,
      value : value
    };
  }
}));
app.use(cookieParser());

//set static folder
app.use(express.static(path.join(__dirname, 'public')));

//setting mysql config
var db = require('./db');

// Connect to MySQL on start
db.connect(function(pool) {
});


// Express Session
// app.use(session({
//     secret: ,
//     saveUninitialized: true,
//     resave: true
// }));

//MYSQL session store
var MySQLStore = require('express-mysql-session')(session);
var sessionStore = new MySQLStore({
    checkExpirationInterval: 900000,// How frequently expired sessions will be cleared; milliseconds.
    expiration: 86400000,// The maximum age of a valid session; milliseconds.
    createDatabaseTable: true,// Whether or not to create the sessions database table, if one does not already exist.
    schema: {
        tableName: 'sessions',
        columnNames: {
            session_id: 'session_id',
            expires: 'expires',
            data: 'data'
        }
    }
  }, db.connection_for_sessions);

app.use(session({
    key: 'attendance.key',
    secret: '$76b+_t*j_%$15(_96v(r=1u4yelple=ds^!w-raio8^2qys7w',
    store: sessionStore,
    resave: true,
    saveUninitialized: true
}));


// Passport init
app.use(passport.initialize());
app.use(passport.session());    //for presistent login sessions


// Connect Flash
app.use(flash());

// Global Vars
app.use(function (req, res, next) {
  res.locals.success_msg = req.flash('success_msg');
  res.locals.error_msg = req.flash('error_msg');
  res.locals.error = req.flash('error');
  res.locals.errors_validator = null;
  res.locals.user = req.user || null;
  next();
});

//routes
app.use('/', routes);
// app.use('/users', users);
app.use('/teacher',require('./routes/teacher'));
app.use('/student',require('./routes/student'));
app.use('/api',require('./routes/api'));

function isLoggedIn(url, req, res, next) {

    // if user is authenticated in the session, carry on
    if (req.isAuthenticated())
        return next();

    // if they aren't redirect them to the home page
    res.redirect(url);
}

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (process.env.development) {
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
if(process.env.production){
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: {}
    });
  });
}

module.exports = app;
