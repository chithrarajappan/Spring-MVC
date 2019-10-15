<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>    
	  
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Welcome to Soccer</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <!-- styles -->
  <link rel="stylesheet" href="../resources/css/fancybox/jquery.fancybox.css">
  <link href="../resources/css/bootstrap.css" rel="stylesheet" />
  <link href="../resources/css/bootstrap-theme.css" rel="stylesheet" />
  <link rel="stylesheet" href="../resources/css/slippry.css">
  <link href="../resources/css/style.css" rel="stylesheet" />
  <link rel="stylesheet" href="../resources/color/default.css">
  <!-- =======================================================
    Theme Name: Groovin
    Theme URL: https://bootstrapmade.com/groovin-free-bootstrap-theme/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
  <script src="../resources/assets/js/modernizr.custom.js"></script>
</head>

<body>
  <header>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp">Soccer</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" align="">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="index.jsp#about">About </a></li>
        <li><a href="../clubhome">Clubs</a></li>
        <li><a href="../playerhome">Players</a></li>
        <li><a href="../matchScheduleguest">Matches</a></li>
        <li><a href="ticketbook">Ticket Booking</a></li>
        <li><a href="index.jsp#contact">Contact Us</a></li>
        <li><a href="../login">Sign In</a></li>
      </ul>
<!--
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
-->
    </div>
  </div>
</nav>

  </header>
  <div id="page-wrapper" style="padding:0px 100px 40px 100px;">
    <div class="row">
        <div class="col-lg-12">
           <h3 class="page-header"><font color="black">View more&nbsp;</font>&nbsp;club player details</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
 <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">Club Players</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    View Clubs Players
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
           <thead>
               
               <tr>
	               <th>FirstName</th>
	               <th>LastName</th>
	               <th>age</th>
	               <th>State</th>
	               <th>Win</th>
	               <th>Loss</th>
	               <th>Goal</th>
	               <th>Rank</th>
               </tr>
               </thead>
               <tbody>
               <form:form method="POST" action="" >
               	 <tr>
               	    <td><form:input type="text" path="firstname" readonly=""/></td>  
	  			 	<td><form:input type="text" path="lastname" readonly=""/></td> 
                    <td><form:input type="number" path="age" readonly=""/></td> 
                    <td><form:input type="text" path="state" readonly=""/></td> 
                    <td><form:input type="number" path="no_win" readonly=""/></td> 
                    <td><form:input type="number" path="no_loss" readonly=""/></td>
                    <td><form:input type="number" path="no_goal" readonly=""/></td> 
                    <td><form:input type="number" path="score_rank" readonly=""/></td>
                  </tr>
                </form:form>
            
            </tbody>
        </table>

                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-6 -->
    </div>

</div>
    </div>
    <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->

</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    
    </script>

</body>
</html>
  