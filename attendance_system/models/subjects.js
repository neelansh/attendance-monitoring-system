var db = require('../db.js');

//Subjects model
module.exports = {

	getSubjectById : function(school, id, callback) {
		var query = db.get().query("select * from ?? t1 INNER JOIN ?? t2 ON t1.instructor_code = t2.instructor_id INNER JOIN ?? t3 ON t1.batch_id = t3.batch_id where t1.subject_id = ?",[school+"_subject_allocation", school+"_teacher", school+"_batch_allocation", id],function(err, rows) {
			if(err)throw err;
			callback(null, rows);
		});
	},

	check_teaching : function(school, id, subject_id, callback) {
		var query = db.get().query("select count(*) from ?? where instructor_code = ? and subject_id = ?",[school+"_subject_allocation", id, subject_id],function(err, rows) {
			if(err)throw err;
			console.log(rows)
			if(rows[0]['count(*)'] === 1) {
				callback(null, true);
			}else{
				callback(null, false);
			}
		});
	},

	getSubjectByTeacher : function(school, id, callback) {
		var query = db.get().query("select * from ?? as t1, ?? as t2 where instructor_code = ? and t1.batch_id = t2.batch_id",[school+"_subject_allocation",school+"_batch_allocation", id],function(err, rows) {
			if(err)throw err;
			callback(null, rows);
		});
	},

	getStudentsByBatch : function(school, id, callback) {
		var query = db.get().query("select * from ?? where batch_id = ?",[school+"_students", id],function(err, rows) {
			if(err)throw err;
			callback(null, rows);
		});
	},

	getSubjectOfBatch : function(batch_id, callback) {
		var query = db.get().query("select subject_id from ?? where batch_id = ?",[school+"_subject_allocation",batch_id],function(err, rows) {
			if(err)throw err;
			callback(null, rows);
		});
	},

	getSubjectsWithAllData : function(school, callback) {
		var query = db.get().query("SELECT * FROM ?? t1 INNER JOIN ?? t2 ON t1.instructor_code = t2.instructor_id INNER JOIN ?? t3 ON t1.batch_id = t3.batch_id",[school+"_subject_allocation", school+"_teacher", school+"_batch_allocation"],function(err, rows) {
			if(err)throw err;
			callback(null, rows);
		});
	},

	getCourse: function(school, callback) {

		var query = db.get().query("select distinct course from ?? " ,[school + "_batch_allocation"], function(err, rows) {
			if (err) throw err;

			callback(null, rows);
		});
	},

	getStream: function(school, course, callback) {
		var query = db.get().query("select distinct stream from ?? where course = ? ",[school + "_batch_allocation", course], function(err, rows) {
			if (err) throw err;
			callback(null , rows);
		})
	},

	getSubjects : function(school, stream, semester, course, callback) {
		var query = db.get().query("select distinct subject_name from ??  t1 inner join ?? t2 on t1.batch_id = t2.batch_id where course  = ? and stream = ? and semester = ?",[school+"_subject_allocation", school + "_batch_allocation", course, stream, semester],function(err, rows) {
			if(err)throw err;
			callback(null, rows);
		});
	},

	addSubjectToTeacher: function(subjectDetails, instructor_id, callback) {
		var query = db.get().query("update ?? t1 inner join ??  set instructor_code  = ? where course = ? and stream = ? and semester = ? and  subject_name = ?", [subjectDetails.school + "_subject_allocation", subjectDetails.school + "_batch_allocation", instructor_id, subjectDetails.course, subjectDetails.stream, subjectDetails.semester, subjectDetails.subject_name], function(err, rows) {
			if (err) throw err;

			callback(null, "updated successfully");
		})
	}

}
