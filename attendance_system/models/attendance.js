var db = require('../db.js');
var bcrypt = require('bcryptjs');
// exports.create = function(userId, text, done) {
//   var values = [userId, text, new Date().toISOString()]
  
//   db.get().query('INSERT INTO comments (user_id, text, date) VALUES(?, ?, ?)', values, function(err, result) {
//     if (err) return done(err)
//     done(null, result.insertId)
//   })
// }

// exports.getAll = function(done) {
//   try{

//     db.get().query('SELECT enroll_no FROM usms_attendance_1', function (err, rows) {
//       if (err){
//         console.log(err);
//         return done(err);
//       }
//       done(null, rows);
//     })

//   }catch(err){

//     console.log(err);

//   }
// };

// exports.addDate = function(date, done){
//   try{
//     query = 'ALTER TABLE usms_attendance_1 ADD ' + date + ' int(1) default 0';
//     db.get().query(query, function(err, rows){
//       if (err){
//         console.log(err);
//         return done(err);
//       }
//       done(null, rows);
//     });
//   }catch(err){
//     console.log(err);
//   }
  
// };

// exports.addAttendance = function(enrollment_no, duration, date, done){
//   try{
//     for(var i=0 ; i<enrollment_no.length ; ++i){
//       var q = 'update usms_attendance_1 set '+ date +' = ? where enroll_no = ?;'
      
//       // console.log(db.get().escape(String(date)));
//       var query = db.get().query(q, [parseInt(duration), parseInt(enrollment_no[i])] , function(err, rows){
//         if(err){
//           console.log(err);
//           return done(err);
//         }
//         done(null, rows);
//       });
//       console.log(date);
//       console.log(query.values);
//     }
//   }catch(err){
//     console.log(err);
//   }
  
// };

// exports.getAllByUser = function(userId, done) {
//   db.get().query('SELECT * FROM comments WHERE user_id = ?', userId, function (err, rows) {
//     if (err) return done(err)
//     done(null, rows)
//   })
// }


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
    // console.log(rows[0]);
    callback(null, rows);
  });
}



module.exports.getAttendanceCount = function(enrollment_no, attendance, callback){
  var query = db.get().query("select sum(duration_of_class), subject_code from usms_attendance, usms_subject_allocation where student = ? and usms_attendance.subject_id = usms_subject_allocation.subject_id and attendance = ? group by subject_code",[enrollment_no, attendance],function(err, rows){
    if(err)throw err;
    // console.log(rows[0]);
    callback(null, rows);
  });
}