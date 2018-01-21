var express = require('express');
var router = express.Router();
var passport = require('passport');
var moment = require('moment')
var LocalStrategy = require('passport-local').Strategy;

var teacher = require('../models/teacher');
var student = require('../models/students');
var sub = require("../models/subjects");
var att = require("../models/attendance");

/* GET teacher login page. */
router.get('/login', function(req, res, next) {
	if(req.isAuthenticated() && req.user.instructor_id != null){
		res.redirect("/teacher/dashboard");
		return;
	}
	if(req.isAuthenticated() && req.user.enrollment_no != null){
		res.redirect("/student/dashboard");
		return;
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
	if(req.body.school !== 'usict'){
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
	var prev_links = [
	];
	var curr_link = '<i class="tiny material-icons">home</i> Home';

	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	var subjects = sub.getSubjectByTeacher(req.user.school, req.user.instructor_id, function(err, results){
		if(err) throw new Error(err);
		res.render('teacher_dashboard',{'prevLinks':prev_links, 'currLink' : curr_link, 'subjects': results});
	});
});


router.get('/attendance/:batch_id/:subject_id', function(req, res) {

	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	];
	var curr_link = 'Mark Attendance';

	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('batch_id', 'Invalid parameter.').notEmpty().isInt();
	req.checkParams('subject_id', 'Invalid Subject code.').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}
	
	sub.check_teaching(req.user.school, req.user.instructor_id, req.params.subject_id, function(err, is_teaching){
		if(err) {
			throw new Error(err);
			res.sendStatus(500);
			return;
		}
		if(!is_teaching && !req.user.isDean){
			res.locals.errors = [{'msg': 'You are not teaching this subject.', 'value': 'bad requests: 400'}];
			res.render('index');
			return;
		}

		var subjects = sub.getStudentsBySubject(req.user.school, req.params.subject_id, function(err, results){
			if(err) throw new Error(err);
			if(results == null){
				res.sendStatus(404);
			}
			res.render('attendance',{'prevLinks':prev_links, 'currLink' : curr_link, 'students': results,
				'batch_id': req.params.batch_id,
				'subject_id': req.params.subject_id
			});
			return;
		});
	});
});



router.post('/attendance/:batch_id/:subject_id', function(req, res) {

	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	];
	var curr_link = 'Mark Attendance';


	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
		return;
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
		return;
	}
	req.checkParams('batch_id', 'Invalid parameter.').notEmpty().isInt();
	req.checkParams('subject_id', 'Invalid Subject code.').notEmpty().isInt();
	req.checkBody('hours','Teaching hours invalid.').notEmpty().isInt();
	req.checkBody('date','Attendance date is empty.').notEmpty();
	req.checkBody('time','Attendance time is empty.').notEmpty();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}


	var subject_id = req.params.subject_id;
	var date = moment(req.body.date + " " + req.body.time,"DD MMMM, YYYY HH:mma").toDate();

	var students_present = JSON.parse(req.body.present);
	var students_absent = JSON.parse(req.body.absent);
	var students_notapplicable = JSON.parse(req.body.na);
	var duration_of_class = req.body.hours;

	sub.check_teaching(req.user.school, req.user.instructor_id, subject_id, function(err, is_teaching){
		if(err) {
			throw new Error(err);
			res.sendStatus(500);
			return;
		}
		if(!is_teaching && !req.user.isDean){
			res.locals.errors = [{'msg': 'You are not teaching this subject.', 'value': 'bad requests: 400'}];
			res.render('index');
			return;
		}
		var subjects = att.saveAttendance(req.user.school, subject_id, date, students_present, students_absent, students_notapplicable, duration_of_class, function(err, results){
			if(err) {
				throw new Error(err);
				res.sendStatus(500);
			}
			sub.getStudentsBySubject(req.user.school, req.params.subject_id, function(err, results){
				if(err) {
					throw new Error(err);
					res.sendStatus(500);
					return;
				}

				var temp = {};

				for(var i in results){
					temp[results[i].enrollment_no] = results[i];
				}

				console.log(temp);

				att.getAttendanceByLecture(req.user.school, subject_id, date, function(err, attendance){
					if(err) {
						throw new Error(err);
						res.sendStatus(500);
					}
					res.render('display_students', {'prevLinks':prev_links, 'currLink' : curr_link,
						'students': temp,
						'attendance': attendance,
						'date': date,
						'subject_id': subject_id,
						'batch_id': req.params.batch_id,
						'duration_of_class' : duration_of_class
					});
				});

			});

		});
	});
});

router.get('/profile', function(req, res){
	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	];
	var curr_link = 'My Account';

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
		res.render('teacher_profile',{'prevLinks':prev_links, 'currLink' : curr_link,'user': results});
	});
});

router.get('/attendance_marked/:batch_id/:subject_id', function(req, res){

	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	];
	var curr_link = 'View Class';

	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('batch_id', 'Invalid parameter.').notEmpty().isInt();
	req.checkParams('subject_id', 'Invalid Subject code.').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}

	sub.check_teaching(req.user.school, req.user.instructor_id, req.params.subject_id, function(err, is_teaching){
		if(err) {
			throw new Error(err);
			res.sendStatus(500);
			return;
		}
		if(!is_teaching && !req.user.isDean){
			res.locals.errors = [{'msg': 'You are not teaching this subject.', 'value': 'bad requests: 400'}];
			res.render('index');
			return;
		}
		sub.getStudentsBySubject(req.user.school, req.params.subject_id, function(err, results){
			if(err){
				throw new Error(err);
				res.sendStatus(500);
				return;
			}
			if(results == null){
				res.sendStatus(404);
				return;
			}
			var students = results;

			var from_date = new Date(new Date().getFullYear(), 0, 1);
			var to_date = new Date();


			if(req.query.from_date && req.query.to_date){
				if(moment(req.query.from_date ,"DD MMMM, YYYY").isValid() && moment(req.query.to_date ,"DD MMMM, YYYY").isValid()){
					from_date = moment(req.query.from_date ,"DD MMMM, YYYY").toDate();
					to_date = moment(req.query.to_date ,"DD MMMM, YYYY").toDate();
				}
			}


			att.getPresentBySubject(req.user.school, req.params.subject_id, from_date, to_date, function(err, results){
				if(err){
					throw new Error(err);
					return;
				}
				if(results == null){
					res.sendStatus(404);
				}

				var present = results;
				var dict_present = {};
				for(var i=0; i<present.length ; ++i){
					dict_present[present[i]['student']] = present[i]['sum(duration_of_class)']
				}
				present = dict_present;
				att.getAbsentBySubject(req.user.school, req.params.subject_id, from_date, to_date, function(err, results){
					if(err) throw new Error(err);
					if(results == null){
						res.sendStatus(404);
					}
					var absent = results;
					var dict_absent = {};
					for(var i=0; i<absent.length ; ++i){
						dict_absent[absent[i]['student']] = absent[i]['sum(duration_of_class)']
					}
					absent = dict_absent;

					console.log(students);
					res.render('view_marked_attendance_teacher',{'prevLinks':prev_links, 'currLink' : curr_link, 'students': students, 'present': present, 'absent': absent, 'subject_id': req.params.subject_id, 'from_date': from_date, 'to_date': to_date, 'moment': moment});
				});
			});
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
	req.checkParams('batch_id', 'Invalid parameter.').notEmpty().isInt();
	req.checkParams('subject_id', 'Invalid Subject code.').notEmpty().isInt();
	req.checkParams('enrollment_no', 'invalid enrollment_id parameter').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}

	sub.check_teaching(req.user.school, req.user.instructor_id, req.params.subject_id, function(err, is_teaching){
		if(err) {
			throw new Error(err);
			res.sendStatus(500);
			return;
		}
		if(!is_teaching && !req.user.isDean){
			res.locals.errors = [{'msg': 'You are not teaching this subject.', 'value': 'bad requests: 400'}];
			res.render('index');
			return;
		}
		att.getAttendanceByStudent(req.user.school, req.params.enrollment_no, req.params.subject_id, function(err, results){
			if(err) throw new Error(err);
			if(results == null){
				res.sendStatus(404);
			}

			var prev_links = [
			{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
			{'text' : 'View Class' , 'link': '/teacher/attendance_marked/' + req.params.batch_id + '/' + req.params.subject_id}
			];
			var curr_link = req.params.enrollment_no;

			res.render('student_attendance',{'prevLinks':prev_links, 'currLink' : curr_link,'attendance': results, "enrollment_no": req.params.enrollment_no, "moment": moment});
		});
	});
});


router.get('/update_information', function(req, res) {
		var prev_links = [
		{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
		{'text' : 'My Account' , 'link': '/teacher/profile' + req.params.batch_id + '/' + req.params.subject_id}
		];
		var curr_link = 'Update Profile';

		if (!req.isAuthenticated() || req.user.instructor_id == null) {
		req.flash("error_msg", "authentication failed, Please login again")
		res.redirect("/teacher/login")
	}

	teacher.getInformation(req.user.instructor_id, req.user.school, function(err, teacherInformation) {
		if (err) {
			console.log(err);
			throw new Error(err);
			return;
		}

		res.render('update_information', { 'prevLinks':prev_links, 'currLink' : curr_link, teacherInformation: teacherInformation[0] });
	})
});

router.put('/update_information', function(req, res) {

	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login");
	}

	if (req.user.instructor_id == null) {
		res.redirect("/teacher/login");
	}

	if (!req.body.designation || !req.body.phone || !req.body.email) {
		req.flash("error_msg", "some of the fields are missing. Please fill them correctly");
		res.redirect('/teacher/update_information');
		return;
	}

	// req.checkBody('designation', 'Designation empty').notEmpty().isAlpha();
	// req.checkBody('phone', 'phone number empty').notEmpty().isAlpha();
	// req.checkBody('email', 'email empty').notEmpty().isAlpha();

	// var errors = req.validationErrors();
	// console.log(errors);
	// if (errors) {
	// 	req.flash('error_msg', 'Fields are blank. Please fill them properly');
	// 	res.render('index');
	// 	return;
	// }


	var user_information = {
		designation: req.body.designation,
		phone: req.body.phone,
		email: req.body.email
	}

	teacher.update_information(req.user.school, user_information, req.user.instructor_id, function(err, UpdatedUser) {
		if (err) {
			console.log(err);
			throw new Error(err);
		}

		if (!UpdatedUser) {
			req.flash("error_msg", "Something went wrong please try again");
			res.redirect("/teacher/update_information");
		} else {
			req.flash("success_msg", "Your details has been changed successfully.");
			res.redirect("/teacher/profile");
		}
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

router.get('/edit_attendance/:batch_id/:subject_id', function(req, res){

	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	];
	var curr_link = 'Edit Attendance';

	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('batch_id', 'Invalid parameter.').notEmpty().isInt();
	req.checkParams('subject_id', 'invalid subject id').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}

	sub.check_teaching(req.user.school, req.user.instructor_id, req.params.subject_id, function(err, is_teaching){
		if(err) {
			throw new Error(err);
			res.sendStatus(500);
			return;
		}
		if(!is_teaching && !req.user.isDean){
			res.locals.errors = [{'msg': 'You are not teaching this subject.', 'value': 'bad requests: 400'}];
			res.render('index');
			return;
		}
		att.getLecturesBySubject(req.user.school, req.params.subject_id, function(err, results){
			if(err) throw new Error(err);
			var dateFormat = require('dateformat');
			for(var i=0;i<results.length;++i){
				var lecture = new Date(results[i].lecture_timestamp);
				results[i].lecture_timestamp = dateFormat(lecture, "isoDateTime");
			}
			res.render('display_lectures',{ 'prevLinks':prev_links, 'currLink' : curr_link, 'lectures': results, 'sid':req.params.subject_id, 'bid':req.params.batch_id, "moment": moment });
			return;
		});
	});

});

router.get("/delete/:batch_id/:subject_id", function(req, res) {


	if (!req.isAuthenticated() || req.user.instructor_id == null) {
		res.redirect("/teacher/login");
	}

	var batch_id 	= req.params.batch_id;
	var subject_id 	= req.params.subject_id;

	sub.check_teaching(req.user.school, req.user.instructor_id, req.params.subject_id, function(err, is_teaching){
		if(err) {
			throw new Error(err);
			res.sendStatus(500);
			return;
		}

		if(!is_teaching && !req.user.isDean){
			res.locals.errors = [{'msg': 'You are not teaching this subject.', 'value': 'bad requests: 400'}];
			res.render('index');
			return;
		}


		att.deleteWholeAttendance(req.user.school,subject_id, batch_id, function(err, is_deleted) {
			if (err) {
				console.log(err);
				res.sendStatus(500);
				throw new Error(err);
			}

			console.log(is_deleted);

			if (is_deleted) {
				res.redirect("/teacher/dashboard");
			} else {
				res.redirect("/teacher/edit_attendance/" + batch_id + "/" + subject_id + "/");
			}
		})
	});

});


router.get('/edit_attendance/:batch_id/:subject_id/:lecture', function(req, res){
	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	{'text' : 'Edit Attendance','link' :'/teacher/edit_attendance/' + req.params.batch_id + '/' + req.params.subject_id},
	];
	var curr_link = req.params.lecture;

	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
		return;
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
		return;
	}
	req.checkParams('batch_id', 'Invalid parameter.').notEmpty().isInt();
	req.checkParams('subject_id', 'Invalid Subject code.').notEmpty().isInt();
	req.checkParams('lecture', 'invalid lecture parameter').notEmpty();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}


	var dateFormat = require('dateformat');
	var lecture = new Date(req.params.lecture);
	var timestamp = dateFormat(lecture, "isoDateTime");

	sub.check_teaching(req.user.school, req.user.instructor_id, req.params.subject_id, function(err, is_teaching){
		if(err) {
			throw new Error(err);
			res.sendStatus(500);
			return;
		}
		if(!is_teaching && !req.user.isDean){
			res.locals.errors = [{'msg': 'You are not teaching this subject.', 'value': 'bad requests: 400'}];
			res.render('index');
			return;
		}
		sub.getStudentsBySubject(req.user.school, req.params.subject_id, function(err, students){
			if(err) throw new Error(err);
			if(students == null){
				res.sendStatus(404);
				return;
			}
			console.log(students);
			att.getAttendanceByLecture(req.user.school, req.params.subject_id, lecture, function(err, attendance){
				if(err) throw new Error(err);
				if(attendance.length == 0){
					req.flash('error_msg', 'Invalid lecture parameter. No record of attendance for lecture on ' + timestamp);
					res.redirect("/teacher/dashboard");
					return;
				}
				res.render('attendance',{'prevLinks':prev_links, 'currLink' : curr_link,
				 'students': students,
				 'lecture': timestamp,
				 'attendance': attendance,
				 'batch_id': req.params.batch_id,
				 'subject_id': req.params.subject_id,
				 'edit_mode': true,
				 'moment': moment
				});
				return;
			});
		});
	});

});


router.post('/edit_attendance/:batch_id/:subject_id/:lecture', function(req, res) {
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
		return;
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
		return;
	}

	req.checkParams('batch_id', 'Invalid parameter.').notEmpty().isInt();
	req.checkParams('subject_id', 'Invalid Subject code.').notEmpty().isInt();
	req.checkParams('lecture', 'Invalid lecture Parameter.').notEmpty();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}



	var subject_id = req.params.subject_id;
	var date = moment(req.body.date + " " + req.body.time,"DD MMMM, YYYY HH:mma").toDate();

	var students_present = JSON.parse(req.body.present);
	var students_absent = JSON.parse(req.body.absent);
	var students_notapplicable = JSON.parse(req.body.na);
	var duration_of_class = req.body.hours;

	sub.check_teaching(req.user.school, req.user.instructor_id, req.params.subject_id, function(err, is_teaching){
		if(err) {
			throw new Error(err);
			res.sendStatus(500);
			return;
		}
		if(!is_teaching && !req.user.isDean){
			res.locals.errors = [{'msg': 'You are not teaching this subject.', 'value': 'bad requests: 400'}];
			res.render('index');
			return;
		}
		att.updateAttendance(req.user.school, subject_id, date, students_present, students_absent, students_notapplicable, duration_of_class, function(err, results){
			if(err) {
				throw new Error(err);
				res.sendStatus(500);
				return;
			}
			sub.getStudentsBySubject(req.user.school, req.params.subject_id, function(err, results){
				if(err) {
					throw new Error(err);
					res.sendStatus(500);
					return;
				}

				var temp = {};

				for(var i in results){
					temp[results[i].enrollment_no] = results[i];
				}

				att.getAttendanceByLecture(req.user.school, subject_id, date, function(err, attendance){
					if(err) {
						throw new Error(err);
						res.sendStatus(500);
						return;
					}
					res.render('display_students', {'students': temp,
						'attendance': attendance,
						'date': date,
						'subject_id': subject_id,
						'batch_id': req.params.batch_id,
						'duration_of_class' : duration_of_class
					});
				});

			});

		});
	});

});

router.get('/delete_attendance/:batch_id/:subject_id/:lecture', function(req, res){
	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	{'text' : 'Edit Attendance','link' :'/teacher/edit_attendance/' + req.params.batch_id + '/' + req.params.subject_id},
	{'text' : 'Delete Attendance','link' :'/teacher/edit_attendance/' + req.params.batch_id + '/' + req.params.subject_id},
	];
	var curr_link = req.params.lecture;


	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('batch_id', 'Invalid parameter.').notEmpty().isInt();
	req.checkParams('subject_id', 'invalid subject id').notEmpty().isInt();
	req.checkParams('lecture', 'invalid lecture parameter').notEmpty();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}


	var dateFormat = require('dateformat');
	var lecture = new Date(req.params.lecture);
	var timestamp = dateFormat(lecture, "isoDateTime");

	sub.check_teaching(req.user.school, req.user.instructor_id, req.params.subject_id, function(err, is_teaching){
		if(err) {
			throw new Error(err);
			res.sendStatus(500);
			return;
		}
		if(!is_teaching && !req.user.isDean){
			res.locals.errors = [{'msg': 'You are not teaching this subject.', 'value': 'bad requests: 400'}];
			res.render('index');
			return;
		}
		att.deleteAttendance(req.user.school, req.params.subject_id, lecture, function(err, result){
			if(err){
				throw new Error(err);
				res.sendStatus(500);
				return;
			}

			res.render('attendance_deleted',{'prevLinks':prev_links, 'currLink' : curr_link, 'students': result, 'lecture': lecture, 'batch_id': req.params.batch_id, 'subject_id': req.params.subject_id});
			return;
		});
	});
});


//Dean panel routes

router.get('/dean', function(req, res){

	var prev_links = [
	{'text' : '<i class="tiny material-icons">home</i> Home','link' :'/'},
	];
	var curr_link = 'Dean Admin Panel';

	if(!req.isAuthenticated() || req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	if( req.user.isDean )
	{

		sub.getSubjectsWithAllData(req.user.school, function(err, subjects){
			if(err) throw new Error(err);

			att.getAvgAttendance(req.user.school, function(error, avg_attendance){
				if(error) throw new Error(error);
				res.render('dean_panel', {'prevLinks':prev_links, 'currLink' : curr_link, 'subjects' : subjects, 'avg_attendance': avg_attendance});
			});

		})

	}else{
		res.redirect("/teacher/dashboard") ;
	}
});


router.get('/get_attendance/:subject_id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('subject_id','invalid subject_id').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}

	att.getAvgAttendanceBySubject(req.user.school, req.params.subject_id, function(err, results){
		if(err) throw err;
		if(results == null){
			res.sendStatus(404);
		}
	    res.json(results);
	});
});


router.get('/get_subject_details/:subject_id', function(req, res){
	if(!req.isAuthenticated()){
		res.redirect("/teacher/login");
	}
	if(req.user.instructor_id == null){
		res.redirect("/teacher/login");
	}
	req.checkParams('subject_id','invalid subject_id').notEmpty().isInt();
	var errors = req.validationErrors();
	if(errors){
		res.locals.errors = errors;
		res.render('index');
		return;
	}

	sub.getSubjectById(req.user.school, req.params.subject_id, function(err, results){
		if(err) throw err;
		if(results == null){
			res.sendStatus(404);
		}
		delete results[0].password;
		delete results[0].isDean;
	    res.json(results[0]);
	});
});

router.get("/add_subject", function(req, res) {
	if (!req.isAuthenticated() || req.user.instructor_id == null) {
		res.redirect("/teacher/login");
	}

	res.render("teacher_add_subject");
});


router.get('/:Something', function(req, res) {

	if (!req.isAuthenticated()) {
		res.redirect("/teacher/login");
	}
	if (req.user.instructor_id == null) {
		res.redirect("/teacher/login");
	}

	res.redirect("/teacher/dashboard");
});



module.exports = router;
