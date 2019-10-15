<%@include file="moreheader.jsp" %>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><font color="black">Ticket booking details </font></h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    TicketBooking Details
                </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
       
                    <div class="col-md-12 ">
                        <center>
                        <div class="form-top1">
                            
                           
                            <p>Fill in the form below to get instant access:</p>
                        </div>
                        <div class="form-top">
                            <i class="fa fa-pencil"></i>
                        </div>
                        </center>
                    </div>
        
            <div class="form-bottom">
                  <form:form action="../approveticket" method="post" class="registration-form">  
                   <table>    
                   <form:input type="hidden" path="id"  class="form-club form-control"/>                  
				         <tr>    
				          <td>Viewer Name : </td>   
				          <td><form:input type="text" path="viewername"  class="form-club form-control"  readonly="" required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Email : </td>   
				          <td><form:input type="text" path="email"  class="form-club form-control" required=""/></td>  
				         </tr>
				         
				         <tr>    
				          <td>Contact : </td>   
				          <td><form:input type="text" path="contact"  class="form-club form-control" required=""/></td>  
				         </tr>
				         <tr>    
				          <td>No_seats : </td>   
				          <td><form:input type="number" path="noseats"  class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Cash Amount : </td>   
				          <td><form:input type="number" path="cashamount"  class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Bank: </td>   
				          <td><form:input type="text" path="bank"  class="form-club form-control" required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Account no : </td>   
				          <td><form:input type="number" path="accountno" placeholder="No_Goal Against..." class="form-club form-control"  required=""/></td>  
				         </tr>
				         <form:input type="hidden" path="status" value="1"/>
				         <form:input type="hidden" path="remark" value="Ticket Approved"/></td>
				         <tr>
                          <td cols="2" align="center"><button type="submit" class="btn btn-success">Approve</button>
                         <button type="reset" class="btn btn-warning">Cancel</button></td>
                    
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
  