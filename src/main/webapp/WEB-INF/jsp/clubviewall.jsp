<%@include file="clubheader.jsp" %>

   
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">New Club Requests</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Registered Clubs
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <td>ClubName</td>
                    <td>Email</td>
                    <td>Location</td>
                    <td>History</td>            
                    <td>Stadium</td>  
                    <td>Head_coach</td>
                    <td>Director</td>
                    <td>Manager</td>            
                </tr>
            </thead>
            <tbody>
   			<c:forEach var="emp" items="${list}">   
               <tr>
               		<td>${emp.clubname}</td>  
	  			 	<td>${emp.email}</td> 
                    <td>${emp.location}</td> 
                    <td>${emp.history}</td> 
                    <td>${emp.stadium}</td> 
                    <td>${emp.headcoach}</td> 
                    <td>${emp.director}</td> 
                    <td>${emp.manager}</td>  
                </tr>
            </c:forEach>  
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
    <script src="resources/admin/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
   

</body>

</html>

</body>
</html>