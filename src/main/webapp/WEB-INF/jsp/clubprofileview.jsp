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
                   Club Profile
                </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
       
                    <div class="col-md-12 ">
                        <center>
                        <div class="form-top1">
                            
                            <h3><%=session.getAttribute("uname")%></h3>
                            <p>Profile details</p>
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
				          <td>ClubName : </td>   
				          <td><form:input path="clubname" readonly=""  class="form-first-name form-control" /></td>  
				         </tr>
				        <tr>    
				          <td>Email : </td>   
				          <td><form:input path="email" readonly=""  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Location : </td>   
				          <td><form:input path="location" readonly=""  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>History : </td>   
				          <td><form:input path="history" readonly=""  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Stadium : </td>   
				          <td><form:input path="stadium" readonly=""  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Headcoach : </td>   
				          <td><form:input path="headcoach" readonly=""  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Director : </td>   
				          <td><form:input path="director" readonly=""  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Manager : </td>   
				          <td><form:input path="manager" readonly=""  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Username : </td>   
				          <td><form:input path="username" readonly=""  class="form-first-name form-control" /></td>  
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
    <script src="../resources/club/vendor/metisMenu/metisMenu.min.js"></script>

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
  
