
var express = require('express');
var router = express.Router();
var golf = require('../models/golf.js');

// Index redirect

router.get('/', function (req, res) {
    res.redirect('/index.html');;
});


// Export routes
module.exports = router;