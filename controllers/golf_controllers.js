
var express = require('express');
var router = express.Router();
var golfer = require('../models/golfer.js');

// Index redirect

router.get('/', function (req, res) {
    res.render('index');
});

router.get('/player', function (req, res) {
    golfer.all(function(data) {
        var hbsObject = {
          users: data
        };
        console.log(hbsObject);
        res.render("player", hbsObject);
      });
});

router.get('/hole', function (req, res) {
    res.render('hole');
});

router.get('/history', function (req, res) {
    res.render('history');
});


// Export routes
module.exports = router;