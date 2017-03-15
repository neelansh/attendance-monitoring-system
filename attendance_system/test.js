var mysql = require("mysql");

// First you need to create a connection to the db
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "neelansh5",
  database: "sdc2" 
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

con.end(function(err) {
  // The connection is terminated gracefully
  // Ensures all previously enqueued queries are still
  // before sending a COM_QUIT packet to the MySQL server.
  if(err)console.log(err);
});



script:

create table usict_students as select * from usict_student_2013;

insert INTO usict_students SELECT * from usict_student_2014;
insert INTO usict_students SELECT * from usict_student_2015;
insert INTO usict_students SELECT * from usict_student_2016;

alter table usict_students add batch_id integer(3) 

//to check non numeric enrollment numbers
SELECT * FROM `usict_students` WHERE concat('',enrollment_no * 1) = enrollment_no

alter table usict_students modify column enrollment_no BIGINT(20)

//CREATE MYSQL DUMP

password : $2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y

update usict_students set password = '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y'
update usict_teacher set password = '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y'

alter table usict_subject_allocation add subject_id int(4);

update usict_subject_allocation set subject_id = feedback_id;

update usict_students, usict_batch_allocation set usict_students.batch_id = usict_batch_allocation.batch_id where usict_students.course = usict_batch_allocation.course and usict_students.stream = usict_batch_allocation.stream and usict_batch_allocation.semester = (2017 - year_of_admission)*2-1


