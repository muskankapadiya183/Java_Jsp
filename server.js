const express = require('express');
const app = express();
app.use(express.json());
const port = 4000;
const mongoose = require("mongoose");
const userModel = require("./user");

mongoose
    .connect("mongodb://localhost:27017/userdb")
    .then(() => console.log("MongoDB Connected !!"));

//register user
app.post("/reg", (req, res) => {
    const newUser = req.body;
    userModel.create(newUser);
    return res.json({ data : "Register Successfully" });
});

//login user
app.post("/api/login", async(req, res) => {
    const uname = req.body.username;
    const pwd = req.body.password;
    const loginUser = await userModel.find({ username : uname, password : pwd });
    if (loginUser) {
        return res.json({ data : loginUser });
    } else {
        return res.json({ data : "Username or password Wrong !!" });
    }
});

//deleteuser
app.delete("/api/delete/:username",async(req,res)=>{
    const uname = req.params.username;
    const deleteuser=await userModel.findOneAndDelete({ username : uname});
    if(deleteuser) {
        return res.json("user deleted");
    } else {
        return res.json("user not found");
    }
});

//Featch user
app.get("/api/list",async(req,res)=>{
    const list = req.body
    const userList = await userModel.find(list);
    if(userList.length==0)
    {
        return res.send({data:"no user found"});
    }
    return res.send({data:userList});
})

app.listen(port, () => console.log(`server running on port 4000`));