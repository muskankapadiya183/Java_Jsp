const mongooose = require('mongoose');

const userSchema = mongooose.Schema({
    username : String,
    password : String,
    name : String,
    age : Number
});

const userModel = mongooose.model("user", userSchema, "user");

module.exports = userModel;