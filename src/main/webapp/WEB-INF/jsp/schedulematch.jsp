<%@include file="adminheader.jsp" %>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><font color="black">Add Date of Match </font></h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Schedule Match Date
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
         
                <form role="form" action="scheduledateprocess" method="post" class="registration-form">
                     <div class="col-md-6 form-box">
                         <div><h4><font color="black">Schedule Match Details</font></h4></div>
                   
                   <div class="form-group">
                       <label class="sr-only" for="position">Date</label>
                        <input type="text" name="schedulename" placeholder="Schedule match name.." class="form-club form-control"  required>
                    </div>
                    <div class="form-group">
                       <label class="sr-only" for="position">Date</label>
                        <input type="date" name="scheduledate" placeholder="Schedule match date.." class="form-club form-control"  required>
                    </div>
                    <div class="form-group">
                       <label class="sr-only" for="position">Time</label>
                        <input type="time" name="scheduletime" placeholder="Schedule match time.." class="form-club form-control"  required>
                    </div>
                    <div>
                    <center>
                        <button type="submit" class="btn btn-success">Submit</button>
                    <button type="reset" class="btn btn-warning">Cancel</button></div>
                    </center>
                </div>

            
            <div class="col-sm-5">
                   </form>
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
    <script src="resources/admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="resources/admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="resources/admin/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="resources/admin/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/club/dist/js/sb-admin-2.js"></script>

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
  