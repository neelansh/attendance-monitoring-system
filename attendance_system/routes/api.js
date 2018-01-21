var express = require('express');
var router = express.Router();
var subjects = require("../models/subjects");

// router.get('/subjects/:id', function(req, res){
// 	if(!req.isAuthenticated()){
// 		res.redirect("/");
// 	}
// 	req.checkParams('id','invalid subject id').notEmpty().isInt();

// 	subjects.getSubjectById(req.user.school, req.params.id, function(err, results){
// 		if(err) throw err;
// 		if(results == null){
// 			res.sendStatus(404);
// 		}
// 		// res.setHeader('Content-Type', 'application/json');
// 	    res.json(results);
// 	});
// });

router.get('/students/:id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	var students = require("../models/students");
	req.checkParams('id','invalid student id').notEmpty();

	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}
	students.getUserById(req.user.school, req.params.id, function(err, results){
		if(err) throw err;
		if(results == null){
			res.sendStatus(404);
		}
		// res.setHeader('Content-Type', 'application/json');
	    res.json(results);
	});
});

router.get('/check_subjects', function(req, res) {
	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login");
	}

	if (req.user.instructor_id == null) {
		res.redirect("/teacher/login");
	}

	if (!req.query.subject_code) {
		req.flash("error_msg", "please fill the form correctly");
		return;
	}


	var subject_code = req.query.subject_code;

	subjects.check_subjects(req.user.school, subject_code, function(err, results) {
		if (err) {
			throw err;
		}
		if (results ==  null) {
			res.sendStatus(404);
		}

		console.log(results);
		res.json(results);

	})
});

router.get('/get_course', function(req, res) {
	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login")
	}

	if(req.user.instructor_id ==  null) {
		res.redirect("/teacher/login");
	}

	if (!req.query.school) {
		req.flash("error_msg", "select school first");
		return;
	}


	subjects.getCourse(req.query.school, function(err, results) {
		if (err) throw err;
		if (results == null) {
			res.sendStatus(404);
		}

		res.json(results);
	})
})

router.get('/get_stream', function(req, res) {


	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login")
	}

	if(req.user.instructor_id ==  null) {
		res.redirect("/teacher/login");
	}

	console.log(req.query);
	if (!req.query.school || !req.query.course) {
		req.flash("error_msg", "something went wrong please select dropdown in correct manner");
		return;
	}

	subjects.getStream(req.query.school, req.query.course, function(err, results) {
		if (err) throw err;
		if (results == null) {
			res.sendStatus(404);
		}

		res.json(results);
	})
})

router.get("/get_subjects", function(req, res) {
	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login");
	}

	if (req.user.instructor_id == null) {
	  	res.redirect("/teacher/login");
	}

	if (!req.query.school || !req.query.stream || !req.query.semester || !req.query.course) {
		req.flash("error_msg", "something went wrong please select dropdown in correct manner");
		return;
	}

	subjects.getSubjects(req.query.school, req.query.stream, req.query.semester, req.query.course, function(err, results) {
		if (err) {
			console.log(err);
			throw err;
		}

		res.json(results);
	})

})

router.post("/add_subject_to_teacher", function(req, res) {

	console.log(req.body);

	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login");
	}

	if (req.user.instructor_id == null) {
	  	res.redirect("/teacher/login");
	}

	if (!req.body.school || !req.body.subject_code || !req.body.course || !req.body.type || !req.body.semester || !req.body.subject_name) {
		req.flash("error_msg", "something went wrong please select dropdown in correct manner");
		return;
	}

	var subjectDetails = {
		school 			: req.body.school,
		subject_code	: req.body.subject_code,
		course 			: req.body.course,
		semester		: req.body.semester,
		subject_name	: req.body.subject_name,
		type 			: req.body.type
	}

	if (req.body.stream_input) {
		subjectDetails.stream = req.body.stream_input;

	} else if (req.body.stream_select) {
		subjectDetails.stream = req.body.stream_select;

	} else {
		req.flash("error_msg", "stream input is not properly filled. Please fill it again properly");
		return;
	}

	subjects.addSubjectToTeacher(subjectDetails, req.user.instructor_id, function(err, results) {
		if (err) {
			console.log(err);
			throw err;
		}

		if (results) {
			req.flash("success_msg", "subject successfully added.");
			res.redirect("/teacher/dashboard");
		} else {
			req.flash("error_msg", "something went wrong. Please try again.");
			res.redirect("/teacher/dashboard");
		}
	})

})



module.exports = router;
