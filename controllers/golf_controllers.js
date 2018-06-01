
var express = require('express');
var router = express.Router();
var golf = require('../models/golf.js');

// Index redirect

router.get('/', function (req, res) {
    res.render('index');
});

router.get('/player', function (req, res) {
    res.render('player');
});

router.get('/hole', function (req, res) {
    res.render('hole');
});

router.get('/history', function (req, res) {
    res.render('history');
});


// Export routes
module.exports = router;