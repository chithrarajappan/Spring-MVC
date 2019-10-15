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
        <li><a href="../ticketbook">Ticket Booking</a></li>
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
           <h3 class="page-header"><font color="black">Add ticket booking&nbsp;details</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">TicketBooking</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   TicketBooking details
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                   
            <tbody>
   			 <form:form method="POST" action="ticketbookingprocess">
               	 <tr><th>Match Name</th><td><form:input type="text" path="matchname" name="matchname" readonly=""/></td> </tr> 
	  			 <tr><th>Match Date</th><td><form:input type="text" path="matchdate" name="matchdate" readonly=""/></td></tr>
	  			 <tr><th>Match Time</th><td><form:input type="text" path="matchtime" name="matchtime" readonly=""/></td> </tr>
                <tr><th>Viewername</th><td><input type="text" name="viewername"></td></tr>
                <tr><th>Email</th><td><input type="email" name="email"></td></tr>
                <tr><th>Contact</th><td><input type="number" name="contact"></td></tr>
                <tr><th>No_seats</th><td><input type="number" name="noseats"></td></tr>
                <tr><th>CashAmount</th><td><input type="radio" name="cashamount" value="500">500
							                <input type="radio" name="cashamount" value="1000">1000
							                <input type="radio" name="cashamount" value="1500">1500
							                <input type="radio" name="cashamount" value="2000">2000</td></tr>
                <tr><th>Bank</th><td><select name="bank">
					                <option value="0">Select your bank</option>
					                <option value="sbi">SBI</option>
					                <option value="icic">ICIC</option>
					                <option value="axis">AXIS</option>
					                </select></td></tr>
                <tr><th>AccountNo</th><td><input type="number" name="accountno"></td></tr>
                <input type="hidden" name="status" value="0">
                <input type="hidden" name="remark" value="null">
                <tr><td colspan="2"><center>
                        <button type="submit" class="btn btn-success">Payment</button>
                    <button type="reset" class="btn btn-warning">Cancel</button></div>
                    </center></td></tr>
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
    <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->

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
  