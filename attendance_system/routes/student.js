var express = require('express');
var router = express.Router();
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

var student = require('../models/students');

/* GET student login page. */
router.get('/login', function(req, res, next) {
	if(req.isAuthenticated()){
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
	// var sub = require("../models/subjects")
	// var subjects = sub.getSubjectByTeacher(req.user.instructor_id, function(err, results){
	// 	if(err) throw err;
	// 	res.render('teacher_dashboard',{'subjects': results});
	// });

	res.send("okay" + req.user.enrollment_no);
});

module.exports = router;
