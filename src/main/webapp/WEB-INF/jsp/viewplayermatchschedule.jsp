<%@include file="playerheader.jsp" %>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><font color="black">View Match Schedule</font></h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Schedule Match 
                </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
       
                    <div class="col-md-12 ">
                        <center>
                        <div class="form-top1">
                            
                           
                            <p>Schedule Match</p>
                        </div>
                        <div class="form-top">
                            <i class="fa fa-pencil"></i>
                        </div>
                        </center>
                    </div>
        
            <div class="form-bottom">
         
                <c:forEach var="vms" items="${list}"> 
                     <div class="col-md-6 form-box">
                         <div><h4><font color="black">Match Schedule Details</font></h4></div>
                         <div class="form-group">
                       <label class="sr-only" for="position">Match Name</label>
                        <input type="text" value="${vms.schedulename}"class="form-club form-control"  required>
                    </div>
                   <div class="form-group">
                       <label class="sr-only" for="position">Date</label>
                        <input type="text" value="${vms.scheduledate}"class="form-club form-control"  required>
                    </div>
                     <div class="form-group">
                       <label class="sr-only" for="position">Time</label>
                        <input type="text" value="${vms.scheduletime}"class="form-club form-control"  required>
                    </div>
                    <div>

                </div>
            </c:forEach>  
            
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
    <script src="resources/player/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/player/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/player/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="resources/player/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="resources/player/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="resources/player/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/player/dist/js/sb-admin-2.js"></script>

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
  