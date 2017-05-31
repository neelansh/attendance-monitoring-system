var db = require('../db.js');
var bcrypt = require('bcryptjs');


module.exports.saveAttendance = function(school, subject_id, lecture_timestamp, students_present, students_absent, students_notapplicable, duration_of_class, callback){
  for(var i=0 ; i<students_present.length ; ++i){
    var query = db.get().query("insert into ?? values(?,?,?,?,'P')",[school+"_attendance", subject_id, lecture_timestamp, students_present[i], duration_of_class],function(err, rows){
      if(err)throw err;
    });
  }
  for(var i=0 ; i<students_absent.length ; ++i){
    var query = db.get().query("insert into ?? values(?,?,?,?,'A')",[school+"_attendance", subject_id, lecture_timestamp, students_absent[i], duration_of_class],function(err, rows){
      if(err)throw err;
    });
  }
  for(var i=0 ; i<students_notapplicable.length ; ++i){
    var query = db.get().query("insert into ?? values(?,?,?,?,'NA')",[school+"_attendance", subject_id, lecture_timestamp, students_notapplicable[i], duration_of_class],function(err, rows){
      if(err)throw err;
    });
  }
  
  callback(null, "all entries done")
}

module.exports.updateAttendance = function(school, subject_id, lecture_timestamp_old, students_present, students_absent, students_notapplicable, callback){
  for(var i=0 ; i<students_present.length ; ++i){
    var query = db.get().query("update ?? set attendance = 'P' where subject_id = ? and lecture_timestamp = ? and student = ?",[school+"_attendance", subject_id, lecture_timestamp_old, students_present[i]],function(err, rows){
      if(err)throw err;
    });
  }
  for(var i=0 ; i<students_absent.length ; ++i){
    var query = db.get().query("update ?? set attendance = 'A' where subject_id = ? and lecture_timestamp = ? and student = ?",[school+"_attendance", subject_id, lecture_timestamp_old, students_absent[i]],function(err, rows){
      if(err)throw err;
    });
  }
  for(var i=0 ; i<students_notapplicable.length ; ++i){
    var query = db.get().query("update ?? set attendance = 'NA' where subject_id = ? and lecture_timestamp = ? and student = ?",[school+"_attendance", subject_id, lecture_timestamp_old, students_notapplicable[i]],function(err, rows){
      if(err)throw err;
    });
  }
  
  callback(null, "all entries done")
}

module.exports.getAttendanceBySubject = function(school, subject_id, callback){
  var query = db.get().query("select * from ?? where subject_id = ?",[school+"_attendance", subject_id],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getLecturesBySubject = function(school, subject_id, callback){
  var query = db.get().query("select lecture_timestamp from ?? where subject_id = ? group by lecture_timestamp",[school+"_attendance", subject_id],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getAttendanceByLecture = function(school, subject_id, lecture, callback){
  var query = db.get().query("select * from ?? where subject_id = ? and lecture_timestamp = ?",[school+"_attendance", subject_id, lecture],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getPresentBySubject = function(school, subject_id, callback){
  var query = db.get().query("select student, sum(duration_of_class) from ?? where subject_id = ? and attendance = 'P' group by student",[school+"_attendance", subject_id],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getAbsentBySubject = function(school, subject_id, callback){
  var query = db.get().query("select student, sum(duration_of_class) from ?? where subject_id = ? and attendance = 'A' group by student",[school+"_attendance", subject_id],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getAttendance = function(school, enrollment_no, callback){
  var query = db.get().query("select * from ?? as t1, ?? as t2 where student = ? and t1.subject_id = t2.subject_id",[school+"_attendance", school+"_subject_allocation",enrollment_no],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getAttendanceCount = function(school, enrollment_no, attendance, callback){
  var query = db.get().query("select sum(duration_of_class), subject_code from ?? as t1, ?? as t2 where student = ? and t1.subject_id = t2.subject_id and attendance = ? group by subject_code",[school+"_attendance", school+"_subject_allocation", enrollment_no, attendance],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}

module.exports.getAttendanceByStudent = function(school, enrollment_no, subject_id, callback){
  var query = db.get().query("select * from ?? where student = ? and subject_id = ?",[school+"_attendance", enrollment_no, subject_id],function(err, rows){
    if(err)throw err;
    callback(null, rows);
  });
}