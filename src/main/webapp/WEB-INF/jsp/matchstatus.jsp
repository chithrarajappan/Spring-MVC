<%@include file="clubmoreheader.jsp" %>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><font color="black">View Match Status details of </font><font color="red"><%=session.getAttribute("uname")%></font>&nbsp;club</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Match Stauts Details
                </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
       
                    <div class="col-md-12 ">
                        <center>
                        <div class="form-top1">
                            
                           
                            <p>Match Status</p>
                        </div>
                        <div class="form-top">
                            <i class="fa fa-pencil"></i>
                        </div>
                        </center>
                    </div>
        
            <div class="form-bottom cols-md-12">
               <form:form action="" method="post" class="registration-form">  
                   <table> 
                      
				         <tr>    
				          <td>Schedule Name : </td>   
				          <td><form:input type="text" path="schedulename" readonly="" placeholder="Schedule Name..."  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Schedule date : </td>   
				          <td><form:input type="text" path="scheduledate" readonly="" placeholder="Schedule Date..."  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Schedule time : </td>   
				          <td><form:input type="text" path="scheduletime" readonly="" placeholder="Schedule Date..."  class="form-first-name form-control" /></td>  
				         </tr>
				         <tr>    
				          <td>Club Name : </td>   
				          <td><form:input type="text" path="clubname" readonly="" placeholder="club..." class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Remark : </td>   
				          <td><form:textarea path="remark" readonly="" placeholder="Manager..." class="form-club form-control" required=""/></textarea></td>  
				         </tr>
				         
            </table>
            </form:form>
            </div>
            <div class="col-sm-5">
                    
            </div>
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
  