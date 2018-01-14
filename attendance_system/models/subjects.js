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
		console.log("getCourse")
		console.log(school)
		var query = db.get().query("select distinct course from ?? " ,[school + "_batch_allocation"], function(err, rows) {
			console.log(query);
			if (err) throw err;

			callback(null, rows);
		});
	},

	getStream: function(school, course, callback) {
		var query = db.get().query("select distinct stream from ?? where course = ?"[school + "_batch_allocation", course], function(err, rows) {
			if (err) throw err;
			callback(null , rows);
		})
	},

	getSubjects : function(school, batch_id, callback) {
		var query = db.get().query("select distinct subject_name from ?? as t1 where t1.batch_id = ?",[school+"_subject_allocation", batch_id],function(err, rows) {
			if(err)throw err;
			callback(null, rows);
		});
	},

	addSubjectToTeacher: function(school, batch_id, instructor_id, subject_name, callback) {
		var query = db.get().query("update ?? set instructor_code  = ? where batch_id = ? and subject_name = ?", [school + "_subject_allocation", instructor_id, batch_id, subject_name], function(err, rows) {
			if (err) throw err;
			callback(null, "updated successfully");
		})
	}

}
