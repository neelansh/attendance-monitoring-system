var db = require('../db.js');
var bcrypt = require('bcryptjs');

//Teacher user model

module.exports = {

	getUserByUsername : function(school, username, callback) {
		var query = db.get().query("select * from ?? where name = ?",[school+"_students", username],function(err, rows) {
			if(err)throw err;
			callback(null, rows[0]);
		});
	},

	getUserById : function(school, id, callback) {
		var query = db.get().query("select * from ?? where enrollment_no = ?",[school+"_students", id],function(err, rows) {
			if(err)throw err;
			callback(null, rows[0]);
		});
	},


	comparePassword : function(candidatePassword, hash, callback) {
		bcrypt.compare(candidatePassword, hash, function(err, isMatch) {
	    	if(err) throw err;
	    	console.log("comparing passwords");
	    	callback(null, isMatch);
		});
	},

	setPassword : function(school, new_password, id, callback) {
		bcrypt.genSalt(10, function(err, salt) {
			bcrypt.hash(new_password, salt, function(err, hash) {
				console.log(salt, hash, new_password);
				var query = db.get().query("update ?? set password = ? where enrollment_no = ?",[school+"_students", hash, id],function(err, rows) {
					if(err) throw err;
					console.log(rows);
					callback(null, rows);
				});
				console.log(query.sql);
	    	});
		});
	},

	getAllBatches : function(school, callback) {
		var query = db.get().query("select * from ??",[school+"_batch_allocation"],function(err, rows) {
			if(err)throw err;
			callback(null, rows);
		});
	},

	getInformation: function(enrollment_no, school, callback) {
		var query = db.get().query("select name, phone, email, course, stream from ?? where enrollment_no = ?",[ school + "_students", enrollment_no ], function(err, rows) {
			if (err) {
				console.log(err);
				throw err;
			}

			callback(null, rows)
		})
	},

	update_information: function(school, user_information, enrollment_no, callback) {
		var query = db.get().query("update ?? set email = ?, phone = ?, name = ?, course = ?, stream = ? where enrollment_no = ?",[school + '_students', user_information.email, user_information.phone, user_information.name, user_information.course, user_information.stream, enrollment_no], function(err, rows) {
			if (err) {
				console.log(err);
				throw err;
			}
			console.log(rows);
			callback(null, rows);
		})
	}
}
