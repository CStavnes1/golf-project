// Import the ORM 
var orm = require("../config/historyorm.js");

// call the ORM functions using golfer specific input for the ORM
var history = {
    all: function(playerhole, cb) {
      orm.all("score", playerhole, function(res) {
        cb(res);
      });
    },
    // The variables cols and vals are arrays.
    create: function(cols, vals, cb) {
      orm.create("burgers", cols, vals, function(res) {
        cb(res);
      });
    },
    update: function(objColVals, condition, cb) {
      orm.update("burgers", objColVals, condition, function(res) {
        cb(res);
      });
    }
  };

// Export the database functions
module.exports = history;