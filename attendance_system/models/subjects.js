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

module.exports.getSubjectOfBatch = function(batch_id, callback){
	var query = db.get().query("select subject_id from usms_subject_allocation where batch_id = ?",[batch_id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}