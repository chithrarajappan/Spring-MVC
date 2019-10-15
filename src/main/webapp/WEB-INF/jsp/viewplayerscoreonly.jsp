<%@include file="clubheader.jsp" %>

   
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">Players Scores</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    View Player Score
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <td>Player Name</td>
                    <td>Club Name</td>
                    <td>Win</td>            
                    <td>Loss</td>
                    <td>Goal</td>
                    <td>GoalAssist</td>
                    <td>Red cards</td>
                    <td>Yellow cards</td>
                    <td>Rank</td>            
                </tr>
            </thead>
            <tbody>
   			<c:forEach var="ps" items="${list}">   
               <tr>
               		<td>${ps.name}</td>  
	  			 	<td>${ps.club}</td> 
                    <td>${ps.win}</td> 
                    <td>${ps.loss}</td> 
                    <td>${ps.goal}</td> 
                    <td>${ps.assist}</td> 
                    <td>${ps.redcard}</td> 
                    <td>${ps.yellowcard}</td>  
                    <td>${ps.rank}</td>
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