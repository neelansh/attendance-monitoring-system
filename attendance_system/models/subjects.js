var db = require('../db.js');

//Subjects model

module.exports.getSubjectById = function(school, id, callback){
	var query = db.get().query("select * from ?? where subject_id = ?",[school+"_subject_allocation", id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
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