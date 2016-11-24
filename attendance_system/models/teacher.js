var db = require('../db.js');
var bcrypt = require('bcryptjs');

//Teacher user model


module.exports.getUserByUsername = function(username, callback){
	var query = db.get().query("select * from usms_teacher where name = ?",[username],function(err, rows){
		if(err)throw err;
		callback(null, rows[0]);
	});
}

module.exports.getUserById = function(id, callback){
	var query = db.get().query("select * from usms_teacher where instructor_id = ?",[id],function(err, rows){
		if(err)throw err;
		console.log(rows[0]);
		callback(null, rows[0]);
	});
}

module.exports.comparePassword = function(candidatePassword, hash, callback){
	bcrypt.compare(candidatePassword, hash, function(err, isMatch) {
    	if(err) throw err;
    	console.log("comparing passwords");
    	callback(null, isMatch);
	});

	// if(candidatePassword === 'test'){
	// 	callback(null, true);
	// }else{
	// 	callback(null, false);
	// }
}
