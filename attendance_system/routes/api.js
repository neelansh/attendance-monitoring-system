var express = require('express');
var router = express.Router();
var subjects = require("../models/subjects");

router.get('/subjects/:id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/");
	}
	req.checkParams('id','invalid subject id').notEmpty().isInt();

	subjects.getSubjectById(req.user.school, req.params.id, function(err, results){
		if(err) throw err;
		if(results == null){
			res.sendStatus(404);
		}
		// res.setHeader('Content-Type', 'application/json');
	    res.json(results);
	});
});

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

	if (!req.query.school || !req.query.stream_id || !req.query.semester || !req.query.course) {
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

router.post("add_subject_to_teacher", function(req, res) {
	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login");
	}

	if (req.user.instructor_id == null) {
	  	res.redirect("/teacher/login");
	}

	if (!req.params.school || !req.params.batch_id || !req.params.subject_name) {
		req.flash("error_msg", "something went wrong please select dropdown in correct manner");
		return;
	}

	subjects.addSubjectToTeacher(req.params.school, req.params.batch_id, req.user.instructor_id, req.params.subject_name, function(err, results) {
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
