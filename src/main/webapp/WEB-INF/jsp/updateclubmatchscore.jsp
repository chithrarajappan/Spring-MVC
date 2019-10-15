<%@include file="clubmoreheader.jsp" %>
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
                  <form:form action="updateclubscore" method="post" class="registration-form">  
                   <table>    
                   <form:input type="hidden" path="id" placeholder="Club..." class="form-club form-control"/>                  
				         <tr>    
				          <td>Club Name : </td>   
				          <td><form:input type="text" path="clubname" placeholder="Club..." class="form-club form-control"  readonly="" required=""/></td>  
				         </tr>
				         <tr>    
				          <td>GamePlayed : </td>   
				          <td><form:input type="number" path="gameplayed" placeholder="Game Played..." class="form-club form-control" required=""/></td>  
				         </tr>
				         
				         <tr>    
				          <td>Win : </td>   
				          <td><form:input type="number" path="win" placeholder="No Win..." class="form-club form-control" required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Draw : </td>   
				          <td><form:input type="number" path="draw" placeholder="No Draw" class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>loss : </td>   
				          <td><form:input type="number" path="loss" placeholder="No loss..." class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Goal For: </td>   
				          <td><form:input type="number" path="goalfor" placeholder="No_Goal..." class="form-club form-control" required=""/></td>  
				         </tr>
				         <tr>    
				          <td>No_Goal against : </td>   
				          <td><form:input type="number" path="goalagainst" placeholder="No_Goal Against..." class="form-club form-control"  required=""/></td>  
				         </tr>
				         <tr>    
				          <td>Score Rank : </td>   
				          <td><form:input type="text" path="score" placeholder="Score_Rank..." class="form-club form-control" required=""/></td>  
				         </tr>
				         
                         <tr>
                          <td cols="2" align="center"> <button type="submit" class="btn btn-success">Submit</button>
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
  