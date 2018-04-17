var express = require('express');
var router = express.Router();
var subjects = require("../models/subjects");
var att = require('../models/attendance');
var students = require("../models/students");

var _ = require('underscore');
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


router.get("/student_mapping", function(req, res) {
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}

	console.log(req.query.data);

	students.getStudent(req.user.school, function(err, studentList) {
		if (err) {
			console.log(err);
			throw err;
		}

		var student = [];

		_.each(req.query.data, function(Enrollment_number) {
			_.each(studentList, function(singleStudent) {
				if (Enrollment_number['Enrollment number'] == singleStudent.enrollment_no) {
					student.push(singleStudent);
				}
			})
		})

		console.log(student);

		res.json(student);
	})

})

router.get('/students/:id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
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

router.get('/allStudentAttendance', function(req, res) {
	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login")
	}

	if(req.user.instructor_id ==  null) {
		res.redirect("/teacher/login");
	}

	att.getAllStudentAttendance(req.user.school, function(err, results) {
		if (err) {
			console.log(err);
			throw err;
		}

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
		console.log(results);
		res.json(results);
	})

})

router.get('/:subject_id/attendanceByStudent', function(req,res) {
	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login");
	}

	if (req.user.instructor_id == null) {
	  	res.redirect("/teacher/login");
	}
	att.getAttendanceBySubject(req.user.school, req.params.subject_id,function(err, attendance){
			attendance = _.chain(attendance).groupBy("student").value();
			for (var key in attendance){
				for (var i in attendance[key])
					delete attendance[key][i]['student'];
			}
			res.json(attendance);
	});
})


router.post("/add_subject_to_teacher", function(req, res) {

	console.log(req.body);

	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login");
	}

	if (req.user.instructor_id == null) {
	  	res.redirect("/teacher/login");
	}

	if (!req.body.school || !req.body.type || !req.body.course ||  !req.body.semester || !req.body.subjects || !req.body.student_list) {
		res.send("error_msg", "Some of the fields are missing. Go back refresh it and try to fill all the details in correct order");
		return;
	}

	var student_list = JSON.parse(req.body.student_list[0]);
	var subject = req.body.subjects.split("_");
	console.log(subject[0])
	var subjectDetails = {
		school 			: req.body.school,
		subject_code	: subject[0],
		course 			: req.body.course,
		semester		: req.body.semester,
		subject_name	: subject[1],
		type 			: req.body.type,
		stream 			: req.body.stream
	}


	subjects.addSubjectToTeacher(subjectDetails, req.user.instructor_id, function(err, results) {
		if (err) {
			console.log(err);
			throw err;
		}
		console.log(results)
		console.log("566465465465465465");

		subjects.findSubject(req.body.school, subjectDetails.subject_code, subjectDetails.course, subjectDetails.stream, function(err, results) {
			if (err) {
				console.log(err);
				throw err;
			}
			console.log(results);
			var subject_id = results.id;
			var ans = "";

			for (var x = 0; x < student_list.length; x++) {
				if (student_list[x]['Enrollment number'] != " ") {
					console.log(typeof student_list[x]['Enrollment number'] );
					console.log(student_list[x]['Enrollment number']);
					ans = "(" + student_list[x]['Enrollment number'] + ", " + subject_id + " ), " + ans;
				}

			}
			console.log(ans);
			ans = ans.slice(0, -2);
			console.log("--------------------------")
			console.log(ans);
			subjects.addStudents(req.body.school, ans,  function(err, results) {
				if (err) {
					console.log(err);
					throw err;
				}
				console.log("Ssssssssssssssssssssss")

				if (results) {
					req.flash("success_msg", "subject successfully added.");
					res.redirect("/teacher/dashboard");
				} else {
					req.flash("error_msg", "something went wrong. Please try again.");
					res.redirect("/teacher/dashboard");
				}

			})
		})


	})

})



module.exports = router;
