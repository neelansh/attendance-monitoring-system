var db = require('../db.js');
var bcrypt = require('bcryptjs');

//Teacher user model


module.exports.getUserByUsername = function(school, username, callback){
	var query = db.get().query("select * from ?? where name = ?",[school+"_students", username],function(err, rows){
		if(err)throw err;
		callback(null, rows[0]);
	});
}

module.exports.getUserById = function(school, id, callback){
	var query = db.get().query("select * from ?? where enrollment_no = ?",[school+"_students", id],function(err, rows){
		if(err)throw err;
		console.log("here we are ",rows[0]);
		callback(null, rows[0]);
	});
}


module.exports.comparePassword = function(candidatePassword, hash, callback){
	bcrypt.compare(candidatePassword, hash, function(err, isMatch) {
    	if(err) throw err;
    	console.log("comparing passwords");
    	callback(null, isMatch);
	});
}
