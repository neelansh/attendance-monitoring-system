var express = require('express');
var router = express.Router();
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

var student = require('../models/students');
var att = require('../models/attendance');

/* GET student login page. */
router.get('/login', function(req, res, next) {
	if(req.isAuthenticated() && req.user.enrollment_no != null){
		res.redirect("/student/dashboard");
	}
	res.render("student_login");
});


passport.serializeUser(function(user, done) {
	console.log("password serialized");
	done(null, user.enrollment_no);
});

passport.deserializeUser(function(id, done) {
	student.getUserById(id, function(err, user) {
		console.log("password deserialized");
		done(err, user);
	});
});

passport.use("local.student",new LocalStrategy({
	usernameField: 'enrollment_no',
	passwordField: 'password'
},
function(username, password, done) {
	student.getUserById(username, function(err, user){
		if(err) throw err;
		if(!user){
			console.log("Unknown user");
			return done(null, false, {message: 'Unknown User'});
		}

		student.comparePassword(password, user.password, function(err, isMatch){
			if(err) throw err;
			if(isMatch){
				console.log("valid password");
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
	if(!req.isAuthenticated()){
		res.redirect("/student/login");
	}
	if(req.user.enrollment_no == null){
		res.redirect("/student/login");
	}
	var present;
	att.getAttendanceCount(req.user.enrollment_no, 'P', function(err, attendance){
		if(err){
			throw err;
		}
		present = attendance;
		var absent;
		att.getAttendanceCount(req.user.enrollment_no, 'A', function(err, attendance){
			if(err){
				throw err;
			}
			absent = attendance;
			var notapplicable;
			att.getAttendanceCount(req.user.enrollment_no, 'NA', function(err, attendance){
				if(err){
					throw err;
				}
				// console.log(attendance);
				notapplicable = attendance;
				att.getAttendance(req.user.enrollment_no, function(err, results){
					if(err){
						throw err;
					}
					res.render('students_dashboard', {'user': req.user, 'present': present, 'absent': absent, 'notapplicable': notapplicable, 'attendance': JSON.stringify(results)});
				});
			});
		});
	});
	// console.log(present, absent, notapplicable);
	
	// res.send("okay" + req.user.enrollment_no);
});

router.get('/profile', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/student/login");
	}
	if(req.user.enrollment_no == null){
		res.redirect("/student/login");
	}
	var profile = student.getUserById(req.user.enrollment_no, function(err, results){
		if(err) throw err;
		if(results == null){
			res.sendStatus(404);
		}
		res.render('student_profile',{'user': results});
	});
});

module.exports = router;
