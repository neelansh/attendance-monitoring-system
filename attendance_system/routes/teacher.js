var express = require('express');
var router = express.Router();
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

var teacher = require('../models/teacher');

/* GET teacher login page. */
router.get('/', function(req, res, next) {
  res.render("teacher_login");
});


passport.serializeUser(function(user, done) {
	console.log("password serialized");
	done(null, user);
});

passport.deserializeUser(function(id, done) {
	teacher.getUserById(id, function(err, user) {
		console.log("password deserialized");
		done(err, user);
	});
});

passport.use(new LocalStrategy(
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
					console.log("inavlid pass");
					return done(null, false, {message: 'Invalid password'});
				}
			});
		});
	}));

router.post('/login',
	passport.authenticate('local', {successRedirect:'/users', failureRedirect:'/',failureFlash: true}),
	function(req, res) {
		console.log("successfully logged in");
		res.redirect('/');
	});

router.get('/logout', function(req, res){
	req.logout();

	req.flash('success_msg', 'You are logged out');

	res.redirect('/');
});


module.exports = router;
