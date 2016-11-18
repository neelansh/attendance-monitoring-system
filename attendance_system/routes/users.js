var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  var att = require('../models/attendance');
  att.getAll(function(err , result){
  	if(err != null){
  		console.log(err);
  	}else{
      console.log(result);
  		console.log(result[0].enroll_no);
  		console.log(result[0].attendance_id);
  		console.log(result[0].date_17_11_16);
  		res.render('attendance' , {'data': result});
  	}
  });
});

router.post('/',function(req, res, next){
	console.log(req);
	res.send("okay");
});


module.exports = router;
