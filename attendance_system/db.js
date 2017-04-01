var mysql = require('mysql')
  , async = require('async');

var PRODUCTION_DB = process.env.mysql_db||'sdc'
  , TEST_DB = 'sdc';

exports.MODE_TEST = process.env.development||true;
exports.MODE_PRODUCTION = process.env.production||false;

var state = {
  pool: null,
  mode: null,
}

exports.connect = function(done) {
  state.pool = mysql.createPool({
    host: process.env.mysql_host||'localhost',
    user: process.env.mysql_user||'root',
    port: process.env.mysql_port||3306,
    password: process.env.mysql_password||'neelansh5',
    database: exports.MODE_PRODUCTION ? PRODUCTION_DB : TEST_DB
  });
  if(exports.MODE_PRODUCTION){
    state.mode = 'production';
  }else{
    state.mode = 'test';
  }
  done();
}

exports.get = function() {
  return state.pool
}

exports.fixtures = function(data) {
  var pool = state.pool
  if (!pool) return done(new Error('Missing database connection.'))

  var names = Object.keys(data.tables)
  async.each(names, function(name, cb) {
    async.each(data.tables[name], function(row, cb) {
      var keys = Object.keys(row)
        , values = keys.map(function(key) { return "'" + row[key] + "'" })

      pool.query('INSERT INTO ' + name + ' (' + keys.join(',') + ') VALUES (' + values.join(',') + ')', cb)
    }, cb)
  }, done)
}

exports.drop = function(tables, done) {
  var pool = state.pool
  if (!pool) return done(new Error('Missing database connection.'))

  async.each(tables, function(name, cb) {
    pool.query('DELETE * FROM ' + name, cb)
  }, done)
}
