var db = require('../db.js');

//Subjects model


module.exports.getSubjectByTeacher = function(id, callback){
	var query = db.get().query("select * from usms_subject_allocation as t1, usms_batch_allocation as t2 where instructor_code = ? and t1.batch_id = t2.batch_id",[id],function(err, rows){
		if(err)throw err;
		callback(null, rows);
	});
}