
var express = require('express');
var router = express.Router();
var golfer = require('../models/golfer.js');
var hole = require('../models/hole.js');
var history = require('../models/history.js');

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
    // this quick statement allows it to run without error 
    var userid = 2;
    // this is where we have to pass in a "userID" value from the login mechanism
    golfer.all(userid, function(data) {
        var hbsObject = {
          users: data
        };
        console.log(hbsObject);
        // calculate the player's handicap using their most recent average score value
        // and replace the playerhandicap value in hbsObject with the new value
        // this ensures that the displayed handicap value is always up-to-date 
        let playerhandicap = (((hbsObject.users[0].playeravgscore - 69.3)*113)/117);
        console.log("appx player handicap being calculated");
        hbsObject.users[0].playerhandicap = playerhandicap; 
        console.log("new player handicap calculated to be " + hbsObject.users[0].playerhandicap);

        // ADD CODE HERE: check if the user is still authenticated using local or session storage , if they are , render the page
        res.render("player", hbsObject);
        // if they are not, return them to the login page 
      });
});

router.get('/hole', function (req, res) {
    var holeid = 1;
    //holeid will be the same as hole number
    hole.all(holeid, function(data) {

        var hbsObject = {
            course: data
        };
        console.log(hbsObject)
        res.render("hole", hbsObject);
    });
    
});

router.get('/hole/:id', function (req, res) {
    var holeid = req.params.id;
    //holeid will be the same as hole number
    hole.all(holeid, function(data) {

        var hbsObject = {
            course: data
        };
        console.log(hbsObject)
        res.render("hole", hbsObject);
    });
    
});

router.get('/history', function (req, res) {
    var userid = 11;
    //playerhole = hole will be the same as hole number
    history.all(userid, function(data) {

        var hbsObject = {
            score: data,
            date: data[0].tstamp
        };
        console.log(hbsObject)
        res.render("history", hbsObject);
    });
    
});


// Export routes
module.exports = router;