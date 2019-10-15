<%@include file="clubheader.jsp" %>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><font color="black">Add new player to </font><font color="red"><%=session.getAttribute("uname")%></font>&nbsp;club</h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Register Players
                </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
       
                    <div class="col-md-12 ">
                        <center>
                        <div class="form-top1">
                            
                            <h3>Sign up new player</h3>
                            <p>Fill in the form below to get instant access:</p>
                        </div>
                        <div class="form-top">
                            <i class="fa fa-pencil"></i>
                        </div>
                        </center>
                    </div>
        
            <div class="form-bottom">
                <form role="form" action="playerprocess" method="post" class="registration-form">
                     <div class="col-md-6 form-box">
                         <div><h4><font color="black">Personal Details</font></h4></div>
                   <div class="form-group">
                         <label class="sr-only" for="form-first-name">First name</label>
                        <input type="text" name="firstname" placeholder="Firstname..." class="form-first-name form-control" required>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-last-name">Last name</label>
                        <input type="text" name="lastname" placeholder="Last name..." class="form-last-name form-control" required>
                    </div>
                     <div class="form-group">
                        <label class="sr-only" for="form-email">Email</label>
                        <input type="text" name="email" placeholder="Email..." class="form-email form-control"  required>
                    </div>
              <div class="form-group">
                        <label class="sr-only" for="form-address">Address</label>
                        <textarea name="address" placeholder="Address..." 
                                    class="form-address form-control" id="form-address" required></textarea>
                    </div>

                    <div class="form-group">
                        <label class="sr-only" for="form-age">Age</label>
                        <input type="number" name="age" placeholder="Age..." class="form-Age form-control" required>
                    </div>
                    <div class="form-group"> 
                        <label class="sr-only" for="dob">Date of birth</label>
                        <input type="date" name="dob" placeholder="Date of birth..." class="form-dob form-control" required>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-age">State</label>
                        <input type="text" name="state" placeholder="State..." class="form-State form-control"  required>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="form-age">Phone Number</label>
                        <input type="number" name="phoneno" placeholder="Phone Number..." class="form-Phone form-control"  required>
                    </div>
                   <div class="form-group">
                       <label class="sr-only" for="position">Club</label>
                        <input type="text" name="club" placeholder="club..." class="form-club form-control"  value="<%=session.getAttribute("uname")%>" required>
                    </div>
                    <div class="form-group">
                       <label class="sr-only" for="position">Clubmanager</label>
                        <input type="text" name="manager" placeholder="club manager..." class="form-clubmanager form-control"  value="" required>
                    </div>
                     
                    
                     <div class="form-group">
                        <label class="sr-only" for="form-User name">User name</label>
                        <input type="text" name="username" placeholder="User name..." class="form-User name form-control"  required>
                    </div>
                     <div class="form-group">
                        <label class="sr-only" for="height">Height</label>
                        <input type="number" name="height" placeholder="Height..." class="form-height form-control"  required>(Height must be cm)
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="wieght">Weight</label>
                        <input type="number" name="weight" placeholder="Weight..." class="form-wight form-control"  required>(Weight must be kg)
                    </div> 
                          <!-- <div class="form-group">
                        <label class="sr-only" for="form-Reg-fee">Reg-fee</label>
                        <input type="text" name="reg_id" placeholder="Registration-Id..." class="form-Reg-id form-control" id="form-Reg-id" required>
                    </div>-->
                </div>
            <div class="col-md-6 form-box">
                 <div><h4><font color="black">Match Details</font></h4></div>
                <div class="form-group"> 
                      <label class="sr-only" for="position">Position</label>
                     <select name="gameposition" required class="form-position form-control">
                         <option value="0">Select your Position in playground</option>
                        <option value="Center">Center</option>
                        <option value="Defender">Defender</option>
                        <option value="Forward">Forward</option>
                        <option value="Play maker">Play maker</option>
                        <option value="Midfielder">Midfielder</option>
                        <option value="Winger">Winger</option>
                        <option value="Goalkeeper">Goalkeeper</option>

                    </select>
                 </div>
                     
                
                    <div class="form-group">
                        <label class="sr-only" for="year">Year of Experiences</label>
                        <input type="number" name="year_exp" placeholder="Year of Experiences..." class="form-year form-control"  required>(must be less than 2 year)
                    </div>
                 <div class="form-group">
                        <label class="sr-only" for="matches">No of Matches</label>
                        <input type="number" name="no_match" placeholder="No of Matches..." class="form-match form-control"  required>(must be less than 2 matches)
                    </div>
                 <div class="form-group">
                        <label class="sr-only" for="win">No of Win Matches</label>
                        <input type="number" name="no_win" placeholder="No of Win Matches..." class="form-win form-control"  required>(must be win atleast 2 matches)
                    </div>
                 <div class="form-group">
                        <label class="sr-only" for="loss">No of loss Matches</label>
                        <input type="number" name="no_loss" placeholder="No of loss Matches..." class="form-loss form-control" required>
                    </div>
                 <div class="form-group">
                        <label class="sr-only" for="height">Total Goals</label>
                        <input type="number" name="goals" placeholder="Total Goals..." class="form-goals form-control"  required>(must be atleast 2 goals)
                    </div>
                 <div class="form-group">
                        <label class="sr-only" for="assist">Assist</label>
                        <input type="number" name="no_assist" placeholder="Assist..." class="form-assist form-control"  required>(Height must be CM)
                    </div>
                <div class="form-group">
                        <label class="sr-only" for="loss">No of Red Cards</label>
                        <input type="number" name="no_redcards" placeholder="No of Red Cards..." class="form-redcard form-control"  required>
                    </div>
                <div class="form-group">
                        <label class="sr-only" for="loss">No of Yellow Cards</label>
                        <input type="number" name="no_yellowcards" placeholder="No of Yellow Cards..." class="form-yellowcards form-control"  required>
                    </div>
                 <div class="form-group">
                        <label class="sr-only" for="height">Total Score/Rank</label>
                        <input type="number" name="score_rank" placeholder="Total Score / Rank..." class="form-score form-control"  required>
                    </div>
                   <div class="form-group">
                        <label class="sr-only" for="height">Password</label>
                        <input type="password" name="password" placeholder="Password" class="form-score form-control" required>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="height"></label>
                        <input type="hidden" name="status" value="0">
                    </div>
            </div>
            <center>
                <button type="submit" class="btn btn-success">Sign up</button>
                    <button type="reset" class="btn btn-warning">Cancel</button></center>
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
  