<%@include file="playermoreheader.jsp" %>

   
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">Play Clubs</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Play Clubs
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <td>Match Name</td>
                    <td>Match Date</td>
                    <td>Match Time</td>
                    <td>First Club</td>            
                    <td>Second Club</td>           
                </tr>
            </thead>
            <tbody>
   			<c:forEach var="mc" items="${list}">   
               <tr>
               		<td>${mc.matchname}</td>  
                    <td>${mc.matchdate}</td> 
                    <td>${mc.matchtime}</td>
                    <td>${mc.club1}</td> 
                     <td>${mc.club2}</td> 
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