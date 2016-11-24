var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render("teacher_login");
});

router.post('/', function(req, res, next) {
  
});

module.exports = router;
