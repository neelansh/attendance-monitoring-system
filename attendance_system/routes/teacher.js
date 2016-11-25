var express = require('express');
var router = express.Router();
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

var teacher = require('../models/teacher');

/* GET teacher login page. */
router.get('/', function(req, res, next) {
	if(req.isAuthenticated()){
		res.redirect("/teacher/dashboard");
	}
	res.render("teacher_login");
});


passport.serializeUser(function(user, done) {
	console.log("password serialized");
	done(null, user.instructor_id);
});

passport.deserializeUser(function(id, done) {
	teacher.getUserById(id, function(err, user) {
		console.log("password deserialized");
		done(err, user);
	});
});

passport.use(new LocalStrategy({
	usernameField: 'employee_id',
	passwordField: 'password'
},
function(username, password, done) {
	teacher.getUserById(username, function(err, user){
		if(err) throw err;
		if(!user){
			console.log("Unknown user");
			return done(null, false, {message: 'Unknown User'});
		}

		teacher.comparePassword(password, user.password, function(err, isMatch){
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
	passport.authenticate('local',{successRedirect: "/teacher/dashboard", failureRedirect: "/teacher",failureFlash: true}),
	function(req, res) {
		console.log("successfully logged in");
		res.redirect('/users');
	});

router.get('/logout', function(req, res){
	req.logout();

	req.flash('success_msg', 'You are logged out');

	res.redirect('/');
});

router.get('/dashboard', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher");
	}
	var sub = require("../models/subjects")
	var subjects = sub.getSubjectByTeacher(req.user.instructor_id, function(err, results){
		if(err) throw err;
		res.render('teacher_dashboard',{'subjects': results});
	});
});

router.get('/dashboard', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher");
	}
	var sub = require("../models/subjects")
	var subjects = sub.getSubjectByTeacher(req.user.instructor_id, function(err, results){
		if(err) throw err;
		res.render('teacher_dashboard',{'subjects': results});
	});
});

router.get('/attendance/:subject_id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher");
	}
	req.check('subject_id', 'invalid url parameter').notEmpty().isInt();
	var sub = require("../models/subjects")
	var subjects = sub.getSudentsBySubject(req.params.subject_id, function(err, results){
		if(err) throw err;
		res.render('teacher_dashboard',{'subjects': results});
	});
});

module.exports = router;
