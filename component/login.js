import React from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';

function Login(){
    const user = {
        username : "",
        password : ""
    };

    const r = useNavigate();

    const LoginUser = () => {
        axios.post("/api/login", user).then((res) => {
            if((res.data.data).length === 1)
            {
                r("/fetch", {replace:true});
            }
            else
            {
                console.log("Wrong");
            }
        });
    }

    return (
        <div>
            <center>
                <h1>Login</h1><br />
                <input placeholder="Enter Name" onChange={(e) => (user.username = e.target.value)} /><br /><br />
                <input type="password" placeholder="Enter Password" onChange={(e) => (user.password = e.target.value)} /><br /><br />
                <button onClick={ LoginUser }>Login Heare</button><br /><br />
                <p>Not have an account ? <a href="/">Register Here</a></p>
            </center>
        </div>
    );
}

export default Login;