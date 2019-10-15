<%@include file="adminheader.jsp" %>

   
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">Approve Club Requests</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Approve/Reject Clubs Requests
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <td>MatchName</td>
                    <td>Matchdate</td>
                    <td>Club</td>            
                    <td>Manager</td>  
                    <td>Email</td>
                    <td>Phone no</td>
                    <td>Players</td>  
                    <td>Attend Match</td> 
                    <td>Win</td> 
                    <td>Goals</td> 
                    <td>Score_rank</td>           
                </tr>
            </thead>
            <tbody>
   			<c:forEach var="mr" items="${list}">   
               <tr>
               		<td>${mr.schedulename}</td>  
                    <td>${mr.scheduledate}</td> 
                    <td>${mr.clubname}</td> 
                    <td>${mr.manager}</td> 
                    <td>${mr.email}</td> 
                    <td>${mr.phoneno}</td> 
                    <td>${mr.no_players}</td>  
                    <td>${mr.no_attendmatch}</td>
                    <td>${mr.win}</td>
                    <td>${mr.goal}</td>
                    <td>${mr.score_rank}</td>
                    <td><a href="approvematchreg/${mr.id}"><button class="btn btn-success"> Approve</button></a> 
                  <a href="rejectmatchreg/${mr.id}"><button class="btn btn-danger">Reject</button></a>
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
    <script src="resources/admin/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
   

</body>

</html>

</body>
</html>