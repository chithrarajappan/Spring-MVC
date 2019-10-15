<%@include file="playermoreheader.jsp" %>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><font color="black">Update Match Score details of </font><font color="red"><%=session.getAttribute("uname")%></font>&nbsp;club</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Match Score Details
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
               <form:form action="updateplayerscore" method="post" class="registration-form">  
                   <table> 
                      <form:input type="hidden" path="id" placeholder="Player name..." class="form-club form-control" required=""/>
				         <tr>    
				          <td>Player Name : </td>   
				          <td><form:input type="text" path="name" readonly="" placeholder="Player name..." class="form-club form-control" required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Club : </td>   
				          <td><form:input type="text" path="club" readonly="" placeholder="Club name..." class="form-club form-control" required=""/></td>  
				         </tr>
				         
				         <tr>    
				          <td>Win : </td>   
				          <td><form:input type="number" path="win" placeholder="No Win..." class="form-club form-control" required=""/></td>  
				         </tr>
				         <tr>    
				          <td>loss : </td>   
				          <td><form:input type="number" path="loss" placeholder="No loss..." class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Goal: </td>   
				          <td><form:input type="number" path="goal" placeholder="No_Goal..." class="form-club form-control" required=""/></td>  
				         </tr>
				         <tr>    
				          <td>No Assist : </td>   
				          <td><form:input type="number" path="assist" placeholder="No Assist..." class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>No Red cards : </td>   
				          <td><form:input type="number" path="redcard" placeholder="No red cards..." class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>No Yellow cards : </td>   
				          <td><form:input type="number" path="yellowcard" placeholder="No yellow cards..." class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Score Rank : </td>   
				          <td><form:input type="number" path="rank" placeholder="Rank..." class="form-club form-control" required=""/></td>  
				         </tr>
				         
                         <tr>
                          <td clos="2" align="center"> <button type="submit" class="btn btn-success">Submit</button>
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
  