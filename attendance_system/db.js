var mysql = require('mysql')
  , async = require('async');

var PRODUCTION_DB = process.env.mysql_db||'sdc2'
  , TEST_DB = 'sdc2';

exports.MODE_TEST = process.env.development||true;
exports.MODE_PRODUCTION = process.env.production||false;

var state = {
  pool: null,
  mode: null,
}

var options = {
    host: process.env.mysql_host||'localhost',
    user: process.env.mysql_user||'root',
    password: process.env.mysql_password||'',
    database: exports.MODE_PRODUCTION ? PRODUCTION_DB : TEST_DB
};
var connection = mysql.createConnection(options);
exports.connection_for_sessions = connection;

exports.connect = function(done) {
  state.pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'sdc2'
  });

  if(exports.MODE_PRODUCTION){
    state.mode = 'production';
  }else{
    state.mode = 'test';
  }
  done();
}



exports.get = function() {
  return state.pool;
}

