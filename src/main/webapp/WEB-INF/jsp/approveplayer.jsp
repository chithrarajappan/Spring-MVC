<%@include file="adminheader.jsp" %>

   
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">Approve Player Requests</h3>
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
        
   			<c:forEach var="pl" items="${list}">   
               <table class="table">    
				        
				         <tr>    
				          <td>FirstName : </td>   
				          <td>${pl.firstname}</td>  
				         </tr>
				         <tr>    
				          <td>LastName : </td>   
				          <td>${pl.lastname}</td>  
				         </tr>
				         <tr>    
				          <td>Email : </td>   
				          <td>${pl.email}</td>  
				         </tr>  
				          
			             <tr>    
				          <td>Club :</td>    
				          <td>${pl.club}</td>  
			             </tr> 
			             <tr>    
				          <td>Manager :</td>    
				          <td>${pl.manager}</td>  
			             </tr> 
			             <tr>    
				          <td>Game position :</td>    
				          <td>${pl.gameposition}</td>  
			             </tr> 
			             <tr>    
				          <td>Height :</td>    
				          <td>${pl.height}</td>  
			             </tr> 
			             <tr>    
				          <td>Weight :</td>    
				          <td>${pl.weight}</td>  
			             </tr> 
			             <tr>    
				          <td>Year_experience :</td>    
				          <td>${pl.year_exp}</td>  
			             </tr> 
			             <tr>    
				          <td>No_Matches :</td>    
				          <td>${pl.no_match}</td>  
			             </tr> 
			             <tr>    
				          <td>No_Win :</td>    
				          <td>${pl.no_win}</td>  
			             </tr> 
			             <tr>    
				          <td>No_loss :</td>    
				          <td>${pl.no_loss}</td>  
			             </tr> 
			             <tr>    
				          <td>No_Goals :</td>    
				          <td>${pl.no_goal}</td>  
			             </tr> 
			             <tr>    
				          <td>No_Assist :</td>    
				          <td>${pl.no_assist}</td>  
			             </tr> 
			             <tr>    
				          <td>No_red Cards :</td>    
				          <td>${pl.no_redcards}</td>  
			             </tr> 
			             <tr>    
				          <td>No_yellow Cards :</td>    
				          <td>${pl.no_yellowcards}</td>  
			             </tr> 
			             <tr>    
				          <td>Score_rank :</td>    
				          <td>${pl.score_rank}</td>  
			             </tr>   
				         
				          <td cols="2" align="center"><a href="approveplayerreg/${pl.id}"><button class="btn btn-success"> Approve</button></a> 
                  <a href="rejectplayerreg/${pl.id}"><button class="btn btn-danger">Reject</button></a>
                </td>
                </tr>    
			        </table>    
                    
            </c:forEach> 
            
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
