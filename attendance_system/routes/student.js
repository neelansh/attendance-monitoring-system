var express = require('express');
var router = express.Router();
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

var student = require('../models/students');
var att = require('../models/attendance');
var sub = require("../models/subjects");

/* GET student login page. */
router.get('/login', function(req, res, next) {
	if(req.isAuthenticated() && req.user.enrollment_no != null){
		res.redirect("/student/dashboard");
	}
	if(req.isAuthenticated() && req.user.instructor_id != null){
		res.redirect("/teacher/dashboard");
		return;
	}
	res.render("student_login");
});


passport.use('local.student',new LocalStrategy({
	usernameField: 'enrollment_no',
	passwordField: 'password',
	passReqToCallback: true
},
function(req, username, password, done) {
	if(req.body.school !== 'usict'){
		return done(null, false, {message: 'Unknown School'});
	}
	var school = req.body.school;
	student.getUserById(school, username, function(err, user){
		if(err) throw err;
		if(!user){
			console.log("Unknown user");
			return done(null, false, {message: 'Unknown User'});
		}

		student.comparePassword(password, user.password, function(err, isMatch){
			if(err) throw err;
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
	passport.authenticate('local.student',{successRedirect: "/student/dashboard", failureRedirect: "/student/login",failureFlash: true}));

router.get('/logout', function(req, res){
	req.logout();

	req.flash('success_msg', 'You are logged out');

	res.redirect('/');
});

router.get('/dashboard', function(req, res){
	var prev_links = [
	];
	var curr_link = '<i class="tiny material-icons">home</i> Home';

	if(!req.isAuthenticated()){
		res.redirect("/student/login");
	}
	if(req.user.enrollment_no == null){
		res.redirect("/student/login");
	}
	var present;
	att.getAttendanceCount(req.user.school, req.user.enrollment_no, 'P', function(err, attendance){
		if(err){
			throw err;
		}
		present = attendance;
		var absent;
		att.getAttendanceCount(req.user.school, req.user.enrollment_no, 'A', function(err, attendance){
			if(err){
				throw err;
			}
			absent = attendance;
			var notapplicable;
			att.getAttendanceCount(req.user.school, req.user.enrollment_no, 'NA', function(err, attendance){
				if(err){
					throw err;
				}
				notapplicable = attendance;
				res.render('students_dashboard', {'prevLinks':prev_links, 'currLink' : curr_link, 'user': req.user, 'present': present, 'absent': absent, 'notapplicable': notapplicable});
			});
		});
	});

	// res.send("okay" + req.user.enrollment_no);
});

router.get('/profile', function(req, res){
	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	];
	var curr_link = 'My Account';

	if(!req.isAuthenticated()){
		res.redirect("/student/login");
	}
	else if(req.user.enrollment_no == null){
		res.redirect("/student/login");
	}

	else res.render('student_profile',{'prevLinks':prev_links, 'currLink' : curr_link,'user': req.user});
});

router.get('/get_attendance', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/student/login");
	}
	if(req.user.enrollment_no == null){
		res.redirect("/student/login");
	}
	att.getAttendance(req.user.school, req.user.enrollment_no, function(err, results){
		if(err){
			throw err;
		}
		res.json(results);
	});
});

router.get('/profile', function(req, res){
	
	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	];
	var curr_link = 'profile';
	

	if(!req.isAuthenticated()){
		res.redirect("/student/login");
	}
	if(req.user.enrollment_no == null){
		res.redirect("/student/login");
	}
	var profile = student.getUserById(req.user.school, req.user.enrollment_no, function(err, results){
		if(err) throw err;
		if(results == null){
			res.sendStatus(404);
		}
		res.render('student_profile',{'prevLinks':prev_links, 'currLink' : curr_link,'user': results});
	});
});

router.get('/change_password', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/student/login");
	}
	if(req.user.enrollment_no == null){
		res.redirect("/student/login");
	}
	res.render('change_password_student');
});

router.post('/change_password', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/student/login");
	}
	if(req.user.enrollment_no == null){
		res.redirect("/student/login");
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
		req.flash('error_msg', 'New password and confirm password do not match.');
	}

	student.comparePassword(req.body.old_password, req.user.password, function(err, isMatch){
		if(err) throw err;
		if(isMatch){
			student.setPassword(req.user.school, req.body.new_password, req.user.enrollment_no, function(err, result){
				if(err) throw err;
				req.flash('success_msg', 'Password Successfully Changed');
				res.redirect('/student/change_password');
			});
		} else if(!isMatch){
			req.flash('error_msg', 'Incorrect password. Please try again.');
			res.redirect('/student/change_password');
		}
	});

});


router.get('/attendance/:subject_id', function(req, res){
	
	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	];
	
	
	if(!req.isAuthenticated()){
		res.redirect("/student/login");
	}
	if(req.user.enrollment_no == null){
		res.redirect("/student/login");
	}
	req.checkParams('subject_id', 'invalid subject id parameter').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}
	var att = require("../models/attendance")
	att.getAttendanceByStudent(req.user.school, req.user.enrollment_no, req.params.subject_id, function(err, results){
			if(err) throw err;
			if(results == null){
				res.sendStatus(404);
			}
			sub.getSubjectById(req.user.school, req.params.subject_id,function(error, subject){
				if(error) throw error;
				if(subject == null){
					res.sendStatus(404);
				}
			subject = {
				
				'subjectName' : subject[0].subject_name,
				'subjectCode' : subject[0].subject_code,
				'subjectType' : subject[0].type,			
				'instructor' : subject[0].name
			}
			var curr_link = subject['subjectName'] + ' ( ' + subject['subjectCode'] + ' )';
			res.render('attendance_details_student',{'prevLinks':prev_links, 'currLink' : curr_link, 'attendance': results, "enrollment_no": req.user.enrollment_no, 'subject':subject});
			});
		});

});

router.get('/:something', function(req, res) {

	if (!req.isAuthenticated()) {
		res.redirect("/student/login");
	}
	if (req.user.instructor_id == null) {
		res.redirect("/student/login");
	}

	res.redirect("/student/dashboard");
});


module.exports = router;
