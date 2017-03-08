var db = require('../db.js');
var bcrypt = require('bcryptjs');

//Teacher user model


module.exports.getUserByUsername = function(username, callback){
	var query = db.get().query("select * from usms_students where name = ?",[username],function(err, rows){
		if(err)throw err;
		callback(null, rows[0]);
	});
}

module.exports.getUserById = function(id, callback){
	var query = db.get().query("select * from usms_students where enrollment_no = ?",[id],function(err, rows){
		if(err)throw err;
		console.log(rows[0]);
		callback(null, rows[0]);
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
	var query = db.get().query("select count(attendance), subject_code from usms_attendance, usms_subject_allocation where student = ? and usms_attendance.subject_id = usms_subject_allocation.subject_id and attendance = ? group by subject_code",[enrollment_no, attendance],function(err, rows){
		if(err)throw err;
		// console.log(rows[0]);
		callback(null, rows);
	});
}

module.exports.comparePassword = function(candidatePassword, hash, callback){
	bcrypt.compare(candidatePassword, hash, function(err, isMatch) {
    	if(err) throw err;
    	console.log("comparing passwords");
    	callback(null, isMatch);
	});
}
