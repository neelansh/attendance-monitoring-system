var db = require('../db.js');
var bcrypt = require('bcryptjs');

//Teacher user model


module.exports.getUserByUsername = function(school, username, callback){
	var query = db.get().query("select * from ?? where name = ?",[school+"_teacher", username],function(err, rows){
		if(err)throw err;
		callback(null, rows[0]);
	});
}

module.exports.getUserById = function(school, id, callback){
	var query = db.get().query("select * from ?? where instructor_id = ?",[school+"_teacher", id],function(err, rows){
		if(err)throw err;
		console.log("hey o hey");
		callback(null, rows[0]);
	});
}

module.exports.comparePassword = function(candidatePassword, hash, callback){
	bcrypt.compare(candidatePassword, hash, function(err, isMatch) {
    	if(err) throw err;
    	callback(null, isMatch);
	});
}
