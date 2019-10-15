<%@include file="clubheader.jsp" %>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><font color="black">Add Profile details of </font><font color="red"><%=session.getAttribute("uname")%></font>&nbsp;club</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Club Details
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
                <form role="form" action="clubprofprocess" method="post" class="registration-form">
                     <div class="col-md-12 form-box">
                         <div><h4><font color="black">Profile Details</font></h4></div>
                   <div class="form-group">
                       <label class="sr-only" for="position">Club</label>
                        <input type="text" name="clubname" placeholder="club..." class="form-club form-control" value="<%=session.getAttribute("uname")%>" readonly required>
                    </div>
                     <div class="form-group">
                        <label class="sr-only" for="form-email">Email</label>
                        <input type="text" name="email" placeholder="Email..." class="form-email form-control" required>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-location">Location</label>
                        <input name="location" type="text" placeholder="Location..."  class="form-location form-control" required >
                    </div>
              <div class="form-group">
                        <label class="sr-only" for="form-location">Club History</label>
                        <textarea name="history" placeholder="Club history..."  class="form-history form-control" required  cols="10" rows="10" maxlength="500"></textarea>(maximum 500 Characters)
                    </div>

                     <div class="form-group">
                        <label class="sr-only" for="form-stadium">Stadium</label>
                        <input type="text" name="stadium" placeholder="Home Stadium..." class="form-stadium form-control"  required>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-Head-coach">Head-coach</label>
                        <input type="text" name="head_coach" placeholder="Head-coach Name..." class="form-Head-coach form-control"  required>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-director">Director</label>
                        <input type="text" name="director" placeholder="Director Name..." class="form-director form-control"  required>
                    </div>
                   <div class="form-group">
                        <label class="sr-only" for="form-manager">Manager</label>
                        <input type="text" name="manager" placeholder="Manager Name..." class="form-manager form-control"  required>
                    </div>
                    <div class="form-group">
                       <label class="sr-only" for="position">Username</label>
                        <input type="text" name="username" placeholder="..." class="form-club form-control"  value="<%=session.getAttribute("uname")%>" readonly required>
                        (Username )
                    </div>
                     <div class="form-group">
                       <label class="sr-only" for="position"></label>
                        <input type="hidden" name="status" placeholder="..." class="form-club form-control"  value="0" required>
                        (Username )
                    </div>
                    <div>
                    <center>
                        <button type="submit" class="btn btn-success">Save</button>
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
    <script src="resources/club/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/club/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/club/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="resources/club/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="resources/club/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="resources/club/vendor/datatables-responsive/dataTables.responsive.js"></script>

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
  