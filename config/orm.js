"use strict";

var connection = require("../config/connection.js");

function objToSql(ob) {
  var arr = [];
  for (var i in ob) {
    if (Object.hasOwnProperty.call(ob, i)) {
      arr.push(i + "=" + ob[i]);
    }
  }
  return arr.toString();
}

// The ORM 
var orm = {
    all: function(tableInput, cb) {
      var queryString = "SELECT * FROM " + tableInput + " WHERE userid='11';"// WHERE THE PLAYER ID is "this player's ID" 
      console.log(queryString);// log the query string before we use it 
      connection.query(queryString, function(err, result) {
        if (err) {
          throw err;
        }
        cb(result);
      });
    },
    create: function(table, cols, vals, cb) {
      var queryString = "INSERT INTO " + table; // add the rest of the shit here for what has to happen with the create
      console.log(queryString);// log the query string before we use it 
      connection.query(queryString, vals, function(err, result) { // run the query string on the database 
        if (err) {
          throw err;
        }
        cb(result);
      });
    },
    // An example of objColVals would be {hole: 1, score: 4}
    update: function(table, objColVals, condition, cb) {
      var queryString = "UPDATE " + table; // add the rest of the shit for the query string here 
      console.log(queryString); //log the query string to the console before we send it 
      connection.query(queryString, function(err, result) { // send the query string to the database 
        if (err) {
          throw err;
        }
        cb(result);
      });
    }
  };

// Export the ORM object in module.exports

module.exports=orm;