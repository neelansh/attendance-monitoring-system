var db = require('../db.js');

// exports.create = function(userId, text, done) {
//   var values = [userId, text, new Date().toISOString()]
  
//   db.get().query('INSERT INTO comments (user_id, text, date) VALUES(?, ?, ?)', values, function(err, result) {
//     if (err) return done(err)
//     done(null, result.insertId)
//   })
// }

exports.getAll = function(done) {
  try{

    db.get().query('SELECT enroll_no FROM usms_attendance_1', function (err, rows) {
      if (err){
        console.log(err);
        return done(err);
      }
      done(null, rows);
    })

  }catch(err){

    console.log(err);

  }
};

exports.addDate = function(date, done){
  try{
    query = 'ALTER TABLE usms_attendance_1 ADD ' + date + ' int(1) default 0';
    db.get().query(query, function(err, rows){
      if (err){
        console.log(err);
        return done(err);
      }
      done(null, rows);
    });
  }catch(err){
    console.log(err);
  }
  
};

exports.addAttendance = function(enrollment_no, duration, date, done){
  try{
    for(var i=0 ; i<enrollment_no.length ; ++i){
      var q = 'update usms_attendance_1 set '+ date +' = ? where enroll_no = ?;'
      // console.log(q);
      console.log(db.get().escape(String(date)));
      db.get().query(q, [date, parseInt(duration), parseInt(enrollment_no[i])] , function(err, rows){
        if(err){
          console.log(err);
          return done(err);
        }
        done(null, rows);
      });
      
    }
  }catch(err){
    console.log(err);
  }
  
};

// exports.getAllByUser = function(userId, done) {
//   db.get().query('SELECT * FROM comments WHERE user_id = ?', userId, function (err, rows) {
//     if (err) return done(err)
//     done(null, rows)
//   })
// }