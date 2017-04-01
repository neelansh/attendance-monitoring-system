var express = require('express');
var router = express.Router();
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

var teacher = require('../models/teacher');
var student = require('../models/students');

/* GET teacher login page. */
router.get('/login', function(req, res, next) {
	if(req.isAuthenticated() && req.user.instructor_id != null){
		res.redirect("/teacher/dashboard");
	}
	res.render("teacher_login");
});


passport.serializeUser(function(user, done) {
	if(user.enrollment_no !== undefined){
		//handel as student
		done(null, {
			'id': user.enrollment_no,
			'school': user.school,
			'isTeacher': false,
			'isStudent': true
		});
	}else if(user.instructor_id !== undefined){
		//handel as teacher
		done(null, {
			'id': user.instructor_id,
			'school': user.school,
			'isTeacher': true,
			'isStudent': false
		});
	}
});

passport.deserializeUser(function(user, done) {
	if(user.isTeacher){
		teacher.getUserById(user.school, user.id, function(err, user_details) {
			if(err) throw new Error(err);
			user_details.school = user.school;
			user_details.isTeacher = user.isTeacher;
			done(err, user_details);
		});
	}else if(user.isStudent){
		student.getUserById(user.school, user.id, function(err, user_details) {
			if(err) throw new Error(err);
			user_details.school = user.school;
			user_details.isStudent = user.isStudent;
			done(err, user_details);
		});
	}
});

passport.use('local.teacher',new LocalStrategy({
	usernameField: 'employee_id',
	passwordField: 'password',
	passReqToCallback: true
},
function(req, username, password, done) {
	if(req.body.school !== 'usict' && req.body.school !== 'usms'){
		return done(null, false, {message: 'Unknown School'});
	}
	var school = req.body.school;
	teacher.getUserById(school, username, function(err, user){
		if(err) throw new Error(err);
		if(!user){
			console.log("Unknown user");
			return done(null, false, {message: 'Unknown User'});
		}

		teacher.comparePassword(password, user.password, function(err, isMatch){
			if(err) throw new Error(err);
			if(isMatch){
				console.log("valid password");
				user.school = school;
				return done(null, user);
			} else {
				console.log("invalid pass");
				return done(null, false, {message: 'Invalid password'});
			}
		});
	});
}));

router.post('/login',
	passport.authenticate('local.teacher',{successRedirect: "/teacher/dashboard", failureRedirect: "/teacher/login",failureFlash: true}));

router.get('/logout', function(req, res){
	req.logout();

	req.flash('success_msg', 'You are logged out');

	res.redirect('/');
});

router.get('/dashboard', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	var sub = require("../models/subjects")
	var subjects = sub.getSubjectByTeacher(req.user.school, req.user.instructor_id, function(err, results){
		if(err) throw new Error(err);
		res.render('teacher_dashboard',{'subjects': results});
	});
});


router.get('/attendance/:batch_id/:subject_id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('batch_id', 'invalid batch id parameter').notEmpty().isInt();
	req.checkParams('subject_id', 'invalid subject id parameter').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}
	var sub = require("../models/subjects")
	var subjects = sub.getStudentsByBatch(req.user.school, req.params.batch_id, function(err, results){
		if(err) throw new Error(err);
		if(results == null){
			res.sendStatus(404);
		}
		res.render('attendance',{'students': results, 'batch_id': req.params.batch_id, 'subject_id': req.params.subject_id});
		return;
	});
});

var findkey = function(obj, value){
	var res = [];
	for (var key in obj) {
    	if (obj[key] === value) {
    		res.push(key);
    	}
	}
	return res;
}

router.post('/attendance/:batch_id/:subject_id', function(req, res) {
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	console.log(req.body);
	req.checkParams('batch_id', 'invalid batch id parameter').notEmpty().isInt();
	req.checkParams('subject_id', 'invalid subject id parameter').notEmpty().isInt();
	req.checkBody('hours','teaching hours invalid').notEmpty().isInt();	
	req.checkBody('date','attendance date is empty').notEmpty();
	req.checkBody('time','attendance time is empty').notEmpty();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}

	var att = require("../models/attendance")
	var subject_id = req.params.subject_id;
	var date = new Date(req.body.date + " " + req.body.time);
	var students_present = req.body.present;
	var students_absent = req.body.absent;
	var students_notapplicable = req.body.na;
	var duration_of_class = req.body.hours;

	var subjects = att.saveAttendance(req.user.school, subject_id, date, students_present, students_absent, students_notapplicable, duration_of_class, function(err, results){
		if(err) throw new Error(err);
		res.render('display_students', {'students_present': students_present,
			'students_notapplicable': students_notapplicable,
			'students_absent': students_absent,
			'date': date,
			'attendanceAwarded' : duration_of_class
		});
	});	
});

router.get('/profile', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}

	var profile = teacher.getUserById(req.user.school, req.user.instructor_id, function(err, results){
		if(err) throw new Error(err);
		if(results == null){
			res.sendStatus(404);
		}
		res.render('teacher_profile',{'user': results});
	});
});

router.get('/attendance_marked/:batch_id/:subject_id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('batch_id', 'invalid batch id parameter').notEmpty().isInt();
	req.checkParams('subject_id', 'invalid subject id parameter').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}

	var att = require("../models/attendance")

	var marked_attendance = att.getPresentBySubject(req.user.school, req.params.subject_id, function(err, results){
		if(err) throw new Error(err);
		if(results == null){
			res.sendStatus(404);
		}
		var present = results;
		att.getAbsentBySubject(req.user.school, req.params.subject_id, function(err, results){
			if(err) throw new Error(err);
			if(results == null){
				res.sendStatus(404);
			}
			var absent = results;
			res.render('view_marked_attendance_teacher',{'present': present, 'absent': absent, 'subject_id': req.params.subject_id});
		});
	});
});

router.get('/attendance_marked/:batch_id/:subject_id/:enrollment_no', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('batch_id', 'invalid batch id parameter').notEmpty().isInt();
	req.checkParams('subject_id', 'invalid subject id parameter').notEmpty().isInt();
	req.checkParams('enrollment_no', 'invalid enrollment_id parameter').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}

	var att = require("../models/attendance")
	att.getAttendanceByStudent(req.user.school, req.params.enrollment_no, req.params.subject_id, function(err, results){
			if(err) throw new Error(err);
			if(results == null){
				res.sendStatus(404);
			}
			res.render('student_attendance',{'attendance': results, "enrollment_no": req.params.enrollment_no});
		});
	
});

router.get('/change_password', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	res.render('change_password');
});

router.post('/change_password', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkBody('old_password', 'old password empty').notEmpty().isAlpha();
	req.checkBody('new_password', 'new password empty').notEmpty().isAlpha();
	req.checkBody('confirm_password', 'confirm password empty').notEmpty().isAlpha();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}


	if(req.body.new_password !== req.body.confirm_password){
		req.flash('error_msg', 'new password and confirm new password do NOT match');
	}

	teacher.comparePassword(req.body.old_password, req.user.password, function(err, isMatch){
		if(err) throw new Error(err);
		if(isMatch){
			teacher.setPassword(req.user.school, req.body.new_password, req.user.instructor_id, function(err, result){
				if(err) throw new Error(err);
				req.flash('success_msg', 'Password Successfully Changed');
				res.redirect('/teacher/change_password');
			});
		} else if(!isMatch){
			req.flash('error_msg', 'Incorrect password');
			res.redirect('/teacher/change_password');
		}
	});

});

router.get('/edit_attendance/:subject_id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('subject_id', 'invalid subject id').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}
	var att = require("../models/attendance")
	var attendance = att.getAttendanceBySubject(req.user.school, req.params.subject_id, function(err, results){
		if(err) throw new Error(err);
		res.render('display_lectures',{ 'lectures': JSON.stringify(results) });
	});

});

module.exports = router;
