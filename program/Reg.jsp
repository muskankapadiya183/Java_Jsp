<%-- 
    Document   : Reg
    Created on : Jan 3, 2022, 8:49:06 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
    html,body { 
	height: 100%; 
}
.global-container{
	height:100%;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #f5f5f5;
}
form{
	padding-top: 10px;
	font-size: 14px;
	margin-top: 30px;
}
.card-title{ font-weight:300; }
.btn{
	font-size: 14px;
	margin-top:20px;
}
.login-form{ 
	width:330px;
	margin:20px;
}
.sign-up{
	text-align:center;
	padding:20px 0 0;
}
.alert{
	margin-bottom:-30px;
	font-size: 13px;
	margin-top:20px;
}
    </style>
</head>
<body>
<div class="global-container">
	<div class="card login-form">
	<div class="card-body">
		<h3 class="card-title text-center">Sign Up E-Com</h3>
		<div class="card-text">
			<!--
			<div class="alert alert-danger alert-dismissible fade show" role="alert">Incorrect username or password.</div> -->
			<form action="addsignup.jsp" method="post">
                                 <div class="form-group">
					<label for="exampleInputEmail1">UserName</label>
                                        <input type="text" class="form-control form-control-sm" name="name" id="exampleInputEmail1" aria-describedby="emailHelp">
				</div>
				<!-- to error: add class "has-danger" -->
				<div class="form-group">
					<label for="exampleInputEmail1">Email address</label>
					<input type="email" class="form-control form-control-sm" name="email" id="exampleInputEmail1" aria-describedby="emailHelp">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password</label>
					
					<input type="password" class="form-control form-control-sm" name="password" id="exampleInputPassword1">
				</div>
				<button type="submit" class="btn btn-primary btn-block">Sign up</button>
				
				
			</form>
		</div>
	</div>
</div>
</div>

</body>
</html>
