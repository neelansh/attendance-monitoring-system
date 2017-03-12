var mysql = require("mysql");

// First you need to create a connection to the db
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "neelansh5",
  database: "sdc" 
});

con.connect(function(err){
  if(err){
    console.log('Error connecting to Db');
    return;
  }
  console.log('Connection established');
});

// var start = +new Date();
// for(var i=1 ; i<70 ; ++i){
//   con.query("insert into usms_attendance_2016 (subject_id, student) values (1,?)",
//   [i*1000],
//   function(err, rows){
//     if(err)console.log(err);
//   });
//   console.log("inserted row no.",i);
// }
// var end = +new Date();
// console.log("all users saved in " + (end-start) + " milliseconds");

// con.query("insert into usms_attendance_2016 (subject_id, student) values (?,?)",
//   [1,i*1000],
//   function(err, rows){
//     if(err)console.log(err);
//     else console.log(rows);
//   });

// con.query("select * from usms_teacher where instructor_id = ?",
//   [30081],
//   function(err, rows){
//     if(err)console.log(err);
//     console.log(rows);
//     console.log(rows[0].name);
//   });

var query = con.query("select * from ?? limit 2",['usms'+'_teacher'], function(err, res){
  if(err)console.log(err);
    console.log(res);
});
console.log(query.sql);

con.end(function(err) {
  // The connection is terminated gracefully
  // Ensures all previously enqueued queries are still
  // before sending a COM_QUIT packet to the MySQL server.
  if(err)console.log(err);
});