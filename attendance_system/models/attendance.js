var db = require('../db.js');
var bcrypt = require('bcryptjs');


module.exports.saveAttendance = function(subject_id, lecture_timestamp, students_present, students_absent, students_notapplicable, duration_of_class, callback){
  for(var i=0 ; i<students_present.length ; ++i){
    var query = db.get().query("insert into usms_attendance values(?,?,?,?,'P')",[subject_id, lecture_timestamp, students_present[i], duration_of_class],function(err, rows){
      if(err)throw err;
    });
  }
  for(var i=0 ; i<students_absent.length ; ++i){
    var query = db.get().query("insert into usms_attendance values(?,?,?,?,'A')",[subject_id, lecture_timestamp, students_absent[i], duration_of_class],function(err, rows){
      if(err)throw err;
    });
  }
  for(var i=0 ; i<students_notapplicable.length ; ++i){
    var query = db.get().query("insert into usms_attendance values(?,?,?,?,'NA')",[subject_id, lecture_timestamp, students_notapplicable[i], duration_of_class],function(err, rows){
      if(err)throw err;
    });
  }
  
  callback(null, "all entries done")
}

module.exports.getAttendanceBySubject = function(subject_id, callback){
  var query = db.get().query("select * from usms_attendance where subject_id = ?",[subject_id],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getPresentBySubject = function(subject_id, callback){
  var query = db.get().query("select student, sum(duration_of_class) from usms_attendance where subject_id = ? and attendance = 'P' group by student",[subject_id],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getAbsentBySubject = function(subject_id, callback){
  var query = db.get().query("select student, sum(duration_of_class) from usms_attendance where subject_id = ? and attendance = 'A' group by student",[subject_id],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getAttendance = function(enrollment_no, callback){
  var query = db.get().query("select * from usms_attendance, usms_subject_allocation where student = ? and usms_attendance.subject_id = usms_subject_allocation.subject_id",[enrollment_no],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getAttendanceCount = function(enrollment_no, attendance, callback){
  var query = db.get().query("select sum(duration_of_class), subject_code from usms_attendance, usms_subject_allocation where student = ? and usms_attendance.subject_id = usms_subject_allocation.subject_id and attendance = ? group by subject_code",[enrollment_no, attendance],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getAttendanceByStudent = function(enrollment_no, subject_id, callback){
  var query = db.get().query("select * from usms_attendance where student = ? and subject_id = ?",[enrollment_no, subject_id],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}