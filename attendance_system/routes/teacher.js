var express = require('express');
var router = express.Router();
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

var teacher = require('../models/teacher');

/* GET teacher login page. */
router.get('/login', function(req, res, next) {
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

passport.use('local.teacher',new LocalStrategy({
	usernameField: 'employee_id',
	passwordField: 'password'
},
function(username, password, done) {
	console.log("inside local strategy");
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
	passport.authenticate('local.teacher',{successRedirect: "/teacher/dashboard", failureRedirect: "/teacher/login",failureFlash: true}));


// router.post('/login',function(req, res, next){
	
// 	passport.authenticate('local', function(err, user, info) {
// 		console.log("here in post login");
// 		if (err) { return next(err); }
// 		if (!user) { return res.redirect('teacher/login'); }
// 		req.logIn(user, function(err) {
// 			if (err) { return next(err); }
// 			return res.redirect("/teacher/dashboard");
// 		});
// 	});
// });

router.get('/logout', function(req, res){
	req.logout();

	req.flash('success_msg', 'You are logged out');

	res.redirect('/');
});

router.get('/dashboard', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	var sub = require("../models/subjects")
	var subjects = sub.getSubjectByTeacher(req.user.instructor_id, function(err, results){
		if(err) throw err;
		res.render('teacher_dashboard',{'subjects': results});
	});
});

router.get('/dashboard', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	var sub = require("../models/subjects")
	var subjects = sub.getSubjectByTeacher(req.user.instructor_id, function(err, results){
		if(err) throw err;
		res.render('teacher_dashboard',{'subjects': results});
	});
});

router.get('/attendance/:batch_id/:subject_id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	req.checkParams('batch_id', 'invalid batch id parameter').notEmpty().isInt();
	req.checkParams('subject_id', 'invalid subject id parameter').notEmpty().isInt();
	var sub = require("../models/subjects")
	var subjects = sub.getStudentsByBatch(req.params.batch_id, function(err, results){
		if(err) throw err;
		res.render('attendance',{'students': results});
	});
});

var findkey = function(obj, value){
	var res = [];
	for (var key in obj) {
    	//console.log(obj.data[i].name);
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
	req.checkParams('batch_id', 'invalid batch id parameter').notEmpty().isInt();
	req.checkParams('subject_id', 'invalid subject id parameter').notEmpty().isInt();
	req.checkBody('teaching_hours','teaching hours invalid').notEmpty().isInt();	
	req.checkBody('date_of_attendance','attendance date is empty').notEmpty();

	var sub = require("../models/subjects")
	var subject_id = req.params.subject_id;
	var date = new Date(req.body.date_of_attendance);
	var students_present = findkey(req.body, 'present');
	var students_absent = findkey(req.body, 'absent');
	var students_notapplicable = findkey(req.body, 'notapplicable');
	var duration_of_class = req.body.teaching_hours;
	console.log(students_present, students_absent, students_notapplicable);
	// console.log(req.body);
	// console.log(date);
	// console.log(students);
	var subjects = sub.saveAttendance(subject_id, date, students_present, students_absent, students_notapplicable, duration_of_class, function(err, results){
		if(err) throw err;
		res.render('display_students', {'students_present': students_present,
			'students_notapplicable': students_notapplicable,
			'students_absent': students_absent,
			'date': date
		});
	});	
});


module.exports = router;
