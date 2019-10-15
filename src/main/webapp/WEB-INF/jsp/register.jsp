<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/assets/css/form-elements.css">
        <link rel="stylesheet" href="resources/assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="resources/assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
<style type="text/css">
body{
   background-image:url("resources/assets/img/images/403493692-soccer-wallpapers.jpg");
   background-size: cover;
   background-position: fixed;
    }
    </style>
    </head>

    <body>

        <!-- Top content -->
<div class="top-content">

<div class="inner-bg">
<div class="container">

<div class="row">
</div>                  
<div class="row">
    <div class="col-sm-5" style="
    margin-left: 30%;">
        <div class="form-box">
            <div class="form-top">
                <div class="form-top-left">
                    <a href="login">back</a>
                    <h3>Sign up now</h3>
                    <p>Fill in the form below to get instant access:</p>
                </div>
                <div class="form-top-right">
                    <i class="fa fa-pencil"></i>
                </div>
            </div>
            <form method="post" action="saveRegister" class="login100-form validate-form">
                        
            <div class="form-bottom"> 
               <div class="form-group">
                        <label class="sr-only" for="form-User name">User name</label>
                        <input type="text" name="username" placeholder="User name..." class="form-User name form-control" id="form-User name" required>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-password">Password</label>
                        <input type="password" name="password" placeholder="Password..." class="form-password form-control" id="form-password" required>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-password">Confirm Password</label>
                        <input type="password" name="cpassword" placeholder="confirm password..." class="form-password form-control" id="form-password" required>
                    </div>
                     
                    <div class="form-group">
                        <label class="sr-only" for="form-category">Category</label>
                        <select class="form-category form-control" name="category" id="category" required>
                        <option value="0">Select your Category</option>
                        <option value="club">Club</option>
                        <option value="player">Player</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-email">Email</label>
                        <input name="email" class="form-email form-control" id="form-email" placeholder="Email" required> 
                    </div>
                    <input type="submit" name="submit" class="btn" value="Sign me up!">
        </div>
    </div>
    </form>  
            </div>
        </div>
        
    </div>
</div>

</div>
</div>

</div>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    
                    
                    
                </div>
            </div>
        </footer>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>