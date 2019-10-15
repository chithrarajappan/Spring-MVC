<%@include file="clubheader.jsp" %>

   
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">New Players</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Registered Players
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Email</td>
                    <td>Age</td>
                    <td>State</td>            
                    <td>Phone no</td>  
                    <td>Club Name</td>
                    <td>Action</td>         
                </tr>
            </thead>
            <tbody>
   			<c:forEach var="ply" items="${list}">   
               <tr>
               		<td>${ply.firstname} ${ply.lastname}</td>  
	  			 	<td>${ply.email}</td> 
                    <td>${ply.age}</td> 
                    <td>${ply.state}</td> 
                    <td>${ply.phoneno}</td> 
                    <td>${ply.club}</td> 
                   <td><a href="clubplayerdetails/${ply.id}"><button class="btn btn-primary">view match details</button></a> 
                </td>                    
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
    <script src="resources/club/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
   

</body>

</html>

</body>
</html>