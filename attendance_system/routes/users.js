var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  // var att = require('../models/attendance');
  // att.getAll(function(err , result){
  // 	if(err != null){
  // 		console.log(err);
  // 	}else{
  // 		res.render('attendance' , {'data': result});
  // 	}
  // });
  res.send("okay you are logged in as " + req.user.name);
});

router.post('/',function(req, res, next){
	// console.log(req.body);
	// res.send("okay");
	if(req.body.dateofattendance === ""){
		res.redirect('/users')
	}else{
		var date = "date_"+req.body.dateofattendance.split('/').join('_');
		// console.log(date);
		var att = require('../models/attendance');
  		att.addDate(date, function(err , result){
  			
			var duration = req.body.teachinghours;
			var enroll_no = [];
			for(var key in req.body){
				if(req.body[key] === 'on'){
					enroll_no.push(key);
				}
			}
			att.addAttendance(enroll_no, duration, date, function(err, result){
				if(err)console.log(err);
			});
  			
  		});
  		res.send("okay");
	}
});


module.exports = router;
