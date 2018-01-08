var mysql = require('mysql')
  , async = require('async');

var PRODUCTION_DB = process.env.mysql_db||'sdc_ams'
  , TEST_DB = 'sdc_ams';

exports.MODE_TEST = process.env.development||true;
exports.MODE_PRODUCTION = process.env.production||false;

var state = {
  pool: null,
  mode: null,
}

var options = {
    host: process.env.mysql_host||'localhost',
    user: process.env.mysql_user||'root',
    port: process.env.mysql_port||3306,
// <<<<<<< HEAD
    password: process.env.mysql_password||'9630',
// =======
//     password: process.env.mysql_password||'root',
// >>>>>>> ed9cf43b1feffb6b614154517ada54beccb56b17
    database: exports.MODE_PRODUCTION ? PRODUCTION_DB : TEST_DB
};
var connection = mysql.createConnection(options);
exports.connection_for_sessions = connection;

exports.connect = function(done) {
  state.pool = mysql.createPool({
    host: options.host,
    user: options.user,
    port: options.port,
    password: options.password,
    database: options.database
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

