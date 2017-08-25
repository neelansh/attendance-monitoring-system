var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
	if(req.isAuthenticated() && req.user.enrollment_no != null){
		res.redirect("/student/dashboard");
		return;
	}
	if(req.isAuthenticated() && req.user.instructor_id != null){
		res.redirect("/teacher/dashboard");
		return;
	}
	res.render('index');
});

module.exports = router;
