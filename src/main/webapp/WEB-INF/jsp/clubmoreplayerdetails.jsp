<%@include file="clubmoreheader.jsp" %>
 
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
           
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   More Details about Player
                </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
       
                    <div class="col-md-12 ">
                        <center>
                        <div class="form-top1">
                            
                            <h3>player</h3>
                            <p>Match details</p>
                        </div>
                        <div class="form-top">
                            <i class="fa fa-user"></i>
                        </div>
                        </center>
                    </div>
      <div class="form-bottom">
            <div class="col-md-8 form-box">     
	            <form:form method="POST" action="" >    
			        <table >    
				        <tr>  
				        <td></td>    
				         <td><form:hidden  path="id" readonly="" class="form-first-name form-control" /></td>  
				         </tr>   
				         <tr>    
				          <td>FirstName : </td>   
				          <td><form:input path="firstname" readonly=""  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>LastName : </td>   
				          <td><form:input path="lastname" readonly="" class="form-last-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Email : </td>   
				          <td><form:input path="email" readonly="" class="form-em form-control" /></td>  
				         </tr>  
				          <tr>    
				          <td>Address :</td>    
				          <td><form:input path="address" readonly="" class="form-adr form-control" /></td>  
			             </tr>
			              <tr>    
				          <td>Age :</td>    
				          <td><form:input path="age" readonly="" class="form-age form-control" /></td>  
			             </tr>  
				         <tr>    
				          <td>DOB :</td>    
				          <td><form:input path="dob" readonly="" class="form-dob form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>State :</td>    
				          <td><form:input path="state" readonly="" class="form-state form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>Phone No :</td>    
				          <td><form:input path="phoneno" readonly="" class="form-phne form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>Club :</td>    
				          <td><form:input path="club" readonly="" class="form-club form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>Manager :</td>    
				          <td><form:input path="manager" readonly="" class="form-manger form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>Game position :</td>    
				          <td><form:input path="gameposition" readonly="" class="form-game form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>Height :</td>    
				          <td><form:input path="height" readonly="" class="form-heg form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>Weight :</td>    
				          <td><form:input path="weight" readonly="" class="form-weg form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>Year_experience :</td>    
				          <td><form:input path="year_exp" readonly="" class="form-yr form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>No_Matches :</td>    
				          <td><form:input path="no_match" readonly="" class="form-nm form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>No_Win :</td>    
				          <td><form:input path="no_win" readonly="" class="form-nw form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>No_loss :</td>    
				          <td><form:input path="no_loss" readonly="" class="form-nl form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>No_Goals :</td>    
				          <td><form:input path="no_goal" readonly="" class="form-ng form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>No_Assist :</td>    
				          <td><form:input path="no_assist" readonly="" class="form-na form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>No_red Cards :</td>    
				          <td><form:input path="no_redcards" readonly="" class="form-nrc form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>No_yellow Cards :</td>    
				          <td><form:input path="no_yellowcards" readonly="" class="form-nyc form-control" /></td>  
			             </tr> 
			             <tr>    
				          <td>Score_rank :</td>    
				          <td><form:input path="score_rank" readonly="" class="form-sr form-control" /></td>  
			             </tr>   
				         <!--  <tr>
				          <td></td>    
				           <td><font color="red"><b>Note : You want to Approve/Reject this Player go to <a href="../approverejectplayer">Approve Player</a> Link</b> </font></td>
				          </tr> -->   
			        </table>    
	          </form:form>    
    </div>
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
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../resources/club/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/club/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="./resources/club/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../resources/club/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../resources/club/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../resources/club/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/club/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

</body>

</html>
  
