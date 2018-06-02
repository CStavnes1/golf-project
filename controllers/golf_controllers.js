
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
<<<<<<< HEAD
    // this quick statement allows it to run without error 
    var userid = 1;
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
=======
    // golfer.all(userid, function(data) {
    //     var hbsObject = {
    //       users: data
    //     };
    //     console.log(hbsObject);
        res.render("player");
>>>>>>> 45d220062cf461aed23f2a1177310af33c399704
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