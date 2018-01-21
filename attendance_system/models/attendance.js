var db = require('../db.js');
var bcrypt = require('bcryptjs');

module.exports  = {

  saveAttendance : function(school, subject_id, lecture_timestamp, students_present, students_absent, students_notapplicable, duration_of_class, callback) {
    //check if number of students equal to marked
    //check if lecture alreay exist
    for(var i=0 ; i<students_present.length ; ++i) {
      var query = db.get().query("insert into ?? (`subject_id`, `lecture_timestamp`,  `student`, `duration_of_class`, `attendance`) values(?,?,?,?,'P')",[school+"_attendance", subject_id, lecture_timestamp, students_present[i], duration_of_class],function(err, rows) {
        if(err)throw err;
      });
    }
    for(var i=0 ; i<students_absent.length ; ++i) {
      var query = db.get().query("insert into ?? (`subject_id`, `lecture_timestamp`,  `student`, `duration_of_class`, `attendance`) values(?,?,?,?,'A')",[school+"_attendance", subject_id, lecture_timestamp, students_absent[i], duration_of_class],function(err, rows) {
        if(err)throw err;
      });
    }
    for(var i=0 ; i<students_notapplicable.length ; ++i) {
      var query = db.get().query("insert into ?? (`subject_id`, `lecture_timestamp`,  `student`, `duration_of_class`, `attendance`) values(?,?,?,?,'NA')",[school+"_attendance", subject_id, lecture_timestamp, students_notapplicable[i], duration_of_class],function(err, rows) {
        if(err)throw err;
      });
    }

    callback(null, "all entries done")
  },

  updateAttendance : function(school, subject_id, lecture_timestamp_old, students_present, students_absent, students_notapplicable, duration_of_class, callback) {
    for(var i=0 ; i<students_present.length ; ++i) {
      var query = db.get().query("update ?? set attendance = 'P' , duration_of_class = ? where subject_id = ? and lecture_timestamp = ? and student = ?",[school+"_attendance", duration_of_class, subject_id, lecture_timestamp_old, students_present[i]],function(err, rows) {
        if(err)throw err;
      });
    }
    for(var i=0 ; i<students_absent.length ; ++i) {
      var query = db.get().query("update ?? set attendance = 'A' , duration_of_class = ? where subject_id = ? and lecture_timestamp = ? and student = ?",[school+"_attendance", duration_of_class, subject_id, lecture_timestamp_old, students_absent[i]],function(err, rows) {
        if(err)throw err;
      });
    }
    for(var i=0 ; i<students_notapplicable.length ; ++i) {
      var query = db.get().query("update ?? set attendance = 'NA' , duration_of_class = ? where subject_id = ? and lecture_timestamp = ? and student = ?",[school+"_attendance", duration_of_class, subject_id, lecture_timestamp_old, students_notapplicable[i]],function(err, rows) {
        if(err)throw err;
      });
    }

    callback(null, "all entries done")
  },

  deleteAttendance : function(school, subject_id, lecture_timestamp, callback) {

      var query = db.get().query("delete from ?? where subject_id = ? and lecture_timestamp = ?",[school+"_attendance", subject_id, lecture_timestamp],function(err, rows) {
        if(err)throw err;
      });

    callback(null, "all entries done")
  },

  deleteWholeAttendance: function(school, instructor_id, subject_id, batch_id , callback) {

    var query = db.get().query("update ?? set instructor_code = ? where subject_id = ?", [school+"_subject_allocation", instructor_id, subject_id], function(err, rows) {
      if(err) {
        console.log(err);
        throw err;
      }

      callback(null, "successfull");
    })
  },

  getAttendanceBySubject : function(school, subject_id, callback) {
    var query = db.get().query("select id, lecture_timestamp as lec_time, duration_of_class as dur, attendance as att, student from ?? where subject_id = ?",[school+"_attendance", subject_id],function(err, rows) {
      if(err)throw err;
      callback(null, rows);
    });
  },

  getLecturesBySubject: function(school, subject_id, callback) {
    var query = db.get().query("select lecture_timestamp from ?? where subject_id = ? group by lecture_timestamp",[school+"_attendance", subject_id],function(err, rows) {
      if(err)throw err;
      callback(null, rows);
    });
  },

  getAttendanceByLecture: function(school, subject_id, lecture, callback) {
    var query = db.get().query("select * from ?? where subject_id = ? and lecture_timestamp = ?",[school+"_attendance", subject_id, lecture],function(err, rows) {
      if(err)throw err;
      callback(null, rows);
    });
  },

  getPresentBySubject: function(school, subject_id, from_date, to_date, callback) {
var query = db.get().query("select student, sum(duration_of_class) from ?? where subject_id = ? and attendance = 'P' and DATE(lecture_timestamp) BETWEEN ? and ? group by student",[school+"_attendance", subject_id, from_date, to_date],function(err, rows) {      if(err)throw err;
      callback(null, rows);
    });
  },

  getAbsentBySubject : function(school, subject_id, from_date, to_date, callback) {
    var query = db.get().query("select student, sum(duration_of_class) from ?? where subject_id = ? and attendance = 'A' and DATE(lecture_timestamp) BETWEEN ? and ? group by student",[school+"_attendance", subject_id, from_date, to_date],function(err, rows) {
      if(err)throw err;
      callback(null, rows);
    });
  },

  getAttendance : function(school, enrollment_no, callback) {
    var query = db.get().query("select * from ?? as t1, ?? as t2 where student = ? and t1.subject_id = t2.subject_id",[school+"_attendance", school+"_subject_allocation",enrollment_no],function(err, rows) {
      if(err)throw err;
      callback(null, rows);
    });
  },

  getAttendanceCount : function(school, enrollment_no, attendance, callback) {
    var query = db.get().query("select sum(duration_of_class), subject_code from ?? as t1, ?? as t2 where student = ? and t1.subject_id = t2.subject_id and attendance = ? group by subject_code",[school+"_attendance", school+"_subject_allocation", enrollment_no, attendance],function(err, rows) {
      if(err)throw err;
      callback(null, rows);
    });
  },

  getAttendanceByStudent: function(school, enrollment_no, subject_id, callback) {
    var query = db.get().query("select * from ?? where student = ? and subject_id = ?",[school+"_attendance", enrollment_no, subject_id],function(err, rows) {
      if(err)throw err;
      callback(null, rows);
    });
  },

  getAvgAttendanceBySubject: function(school, subject_id, callback) {
    var query = db.get().query("SELECT SUM(duration_of_class) as hours, attendance FROM ?? WHERE subject_id = ? GROUP BY attendance",[school+"_attendance", subject_id],function(err, rows) {
      if(err)throw err;
      var hours_present = 0;
      var hours_absent = 0;

      for(var i=0; i<rows.length ; ++i) {
        if(rows[i].attendance == 'P') {
          hours_present = rows[i].hours;
        }
        if(rows[i].attendance == 'A') {
          hours_absent = rows[i].hours;
        }
      }
      callback(null, hours_present/(hours_present+hours_absent));
    });
  },


  getAvgAttendance: function(school, done) {
    var query = db.get().query("SELECT SUM(duration_of_class) as hours, attendance, subject_id FROM ?? GROUP BY attendance, subject_id",[school+"_attendance"],function(err, rows) {
      if(err)throw err;
      var avg_attendance = {};

      for(var i=0; i<rows.length ; ++i) {
        if(rows[i].subject_id in avg_attendance) {
          if(rows[i].attendance == 'P') {
            avg_attendance[rows[i].subject_id].hours_present = rows[i].hours;
          }
          if(rows[i].attendance == 'A') {
            avg_attendance[rows[i].subject_id].hours_absent = rows[i].hours;
          }
        }else{
          avg_attendance[rows[i].subject_id] = {
            "hours_absent": 0,
            "hours_present": 0
          }
          if(rows[i].attendance == 'P') {
            avg_attendance[rows[i].subject_id].hours_present = rows[i].hours;
          }
          if(rows[i].attendance == 'A') {
            avg_attendance[rows[i].subject_id].hours_absent = rows[i].hours;
          }
        }
      }
      done(null, avg_attendance);
    });
  }
}
