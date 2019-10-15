<%@include file="moreheader.jsp" %>

   
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">Club Scores</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    View Clubs Score
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <td>ClubName</td>
                    <td>Game played</td>
                    <td>Win</td>          
                    <td>Draw</td>  
                    <td>Loss</td>
                    <td>Goalfor</td>
                    <td>GoalAgainst</td>
                    <td>Score</td>            
                </tr>
            </thead>
            <tbody>
   			<c:forEach var="cs" items="${list}">   
               <tr>
               		<td>${cs.clubname}</td>  
	  			 	<td>${cs.gameplayed}</td> 
                    <td>${cs.win}</td> 
                    <td>${cs.draw}</td> 
                    <td>${cs.loss}</td> 
                    <td>${cs.goalfor}</td> 
                    <td>${cs.goalagainst}</td> 
                    <td>${cs.score}</td>  
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
    <script src="../resources/admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../resources/admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../resources/admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../resources/admin/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../resources/admin/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/admin/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
   

</body>

</html>

</body>
</html>