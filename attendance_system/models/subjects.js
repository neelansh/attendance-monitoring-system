var db = require('../db.js');

//Subjects model


module.exports.getSubjectByTeacher = function(id, callback){
	var query = db.get().query("select * from usms_subject_allocation as t1, usms_batch_allocation as t2 where instructor_code = ? and t1.batch_id = t2.batch_id",[id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}

module.exports.getStudentsByBatch = function(id, callback){
	var query = db.get().query("select * from usms_students where batch_id = ?",[id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}

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

module.exports.getSubjectOfBatch = function(batch_id, callback){
	var query = db.get().query("select subject_id from usms_subject_allocation where batch_id = ?",[batch_id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}