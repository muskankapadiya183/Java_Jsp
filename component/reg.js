import React from 'react';
import axios from 'axios';

function Reg() {
    const user = {
        username : "",
        password : "",
        name : "",
        age : 0
    };

    const RegisterUser = () => {
        axios.post("/reg", user).then((res) => console.log(res.data));
    }

    return (
        <div>
            <center>
            <h1>Register</h1><br />
            <input placeholder='Enter Username' onChange={ (e) => (user.username = e.target.value) } /><br /><br />
            <input type="password" placeholder='Enter Password' onChange={ (e) => (user.password = e.target.value) } /><br /><br />
            <input placeholder='Enter Name' onChange={ (e) => (user.name = e.target.value) } /><br /><br />
            <input placeholder='Enter Age' onChange={ (e) => (user.age = Number(e.target.value)) } /><br /><br />
            <button onClick={ RegisterUser }>Register</button><br /><br />
            </center>
        </div>
    );
}

export default Reg;