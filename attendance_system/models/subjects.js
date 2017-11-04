var db = require('../db.js');

//Subjects model

module.exports.getSubjectById = function(school, id, callback){
	var query = db.get().query("select * from ?? where subject_id = ?",[school+"_subject_allocation", id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}

module.exports.check_teaching = function(school, id, subject_id, callback){
	var query = db.get().query("select count(*) from ?? where instructor_code = ? and subject_id = ?",[school+"_subject_allocation", id, subject_id],function(err, rows){
		if(err)throw err;
		if(rows[0]['count(*)'] === 1){
			callback(null, true);
		}else{
			callback(null, false);
		}
	});
}

module.exports.getSubjectByTeacher = function(school, id, callback){
	var query = db.get().query("select * from ?? as t1, ?? as t2 where instructor_code = ? and t1.batch_id = t2.batch_id",[school+"_subject_allocation",school+"_batch_allocation", id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}

module.exports.getStudentsByBatch = function(school, id, callback){
	var query = db.get().query("select * from ?? where batch_id = ?",[school+"_students", id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}

module.exports.getSubjectOfBatch = function(batch_id, callback){
	var query = db.get().query("select subject_id from ?? where batch_id = ?",[school+"_subject_allocation",batch_id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}

module.exports.getSubjectsWithAllData = function(school, callback){
	var query = db.get().query("SELECT * FROM ?? t1 INNER JOIN ?? t2 ON t1.instructor_code = t2.instructor_id INNER JOIN ?? t3 ON t1.batch_id = t3.batch_id",[school+"_subject_allocation", school+"_teacher", school+"_batch_allocation"],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}