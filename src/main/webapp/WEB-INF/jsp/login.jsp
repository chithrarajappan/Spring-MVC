<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/images-login/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor-login/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts-login/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts-login/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor-login/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor-login/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor-login/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor-login/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor-login/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css-login/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css-login/main.css">
<!--===============================================================================================-->
</head>

<body>
	
	<div class="container-login100" style="background-image: url('resources/images-login/leo-messi-vs-cristiano-ronaldo-ano-2017.jpg');">
        
		<div class="wrap-login100 p-l-70 p-r-70 p-t-100 p-b-50">
           
			<form action="logAction" method="post" class="login100-form validate-form">            
                <a href="./"><img src="resources/images-login/back.png" height="25px" width="35px"></a>

				<span class="login100-form-title p-b-37">
					Sign In
				</span>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter username or email">
					<input class="input100" type="text" name="username" placeholder="username.." required>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
					<input class="input100" type="password" name="password" placeholder="password" required>
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-25">
					<select class="input100" name="category" required>
					<option value="0">Select Your Category</option>
					<option value="admin">Admin</option>
					<option value="club">Club</option>
					<option value="player">Player</option>
					</select>
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button name="signin" name="sign" class="login100-form-btn">
						Sign In
					</button>
				</div>
	
			</form>
<div class="text-center">
					<a href="register" class="txt2 hov1">
						New Sign Up
					</a>
				</div>
			
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	