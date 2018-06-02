
var express = require('express');
var router = express.Router();
var golfer = require('../models/golfer.js');

function authenticate() {
    // authentication occurs 

    // user enters a username and a password
    
    // we sql query the database to see if that username exists 

    // if the username exists, then check if the password in that row matches 

    // if the username and password both match inside a row, bring back the users ID

    // this function the returns the userID for the username/password combination that logged in 
}

// Index redirect
router.get('/', function (req, res) {
    res.render('index');
    //login function occurs when someone clicks the login button on this page
});

router.get('/player', function (req, res) {
    // golfer.all(userid, function(data) {
    //     var hbsObject = {
    //       users: data
    //     };
    //     console.log(hbsObject);
        res.render("player");
      });
// });

router.get('/hole', function (req, res) {
    res.render('hole');
});

router.get('/history', function (req, res) {
    res.render('history');
});


// Export routes
module.exports = router;