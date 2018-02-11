<?php include_once "inc/header.php";?>
<?php include_once "../Classes/module.php";?>

<?php
    $allM = new Module();
     if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $userjob = $allM->jobInput($_POST);
    }
?>

 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Create New Job From Here
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="col-md-8">
        <div id="adminForm">
            <h3 id="Header">  </h3>
            <br>
            <?php
              if (isset($userjob)) {
                  echo $userjob;
              }
            ?>
            <form action="" method="post" style="padding:2px">
                                  <p> 
                                     <label for="sel1">Job Title</label>
                                        <select class="form-control" id="sellect" name="jId">
                                          <option>Select Job Title</option>
                                           <?php
                                             $getJob = $allM->getAlljobs();
                                              if ($getJob) {
                                                while ($value = $getJob->fetch_assoc()) {
                                                  
                                            ?>
                                           <option value="<?php echo $value['jId'];?>" ><?php echo $value['jobtitle'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
              
                                    <p> 
                                     <label for="sel1">Department</label>
                                        <select class="form-control" id="sellect" name="dId">
                                          <option>Select Department</option>
                                            <?php
                                                $getdept = $allM->getAllDept();
                                                if ($getdept) {
                                                  while ($value = $getdept->fetch_assoc()) {
                                                    
                                              ?>
                                           <option value="<?php echo $value['dId'];?>" ><?php echo $value['deptName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>

                                </p>
                <div class="form-group" style="padding:2px">
                    <div class='input-group date' id='datetimepicker1'> <b> batch </b>
                        <input type='text' name="batch" class="form-control" />
                       
                    </div>
                </div>
                <p> 
                                 <p> 
                                     <label for="sel1">Job Level</label>
                                        <select class="form-control" id="sellect" name="levelId">
                                          <option>Select Job Level</option>
                                            <?php
                                                $getJob = $allM->getJoblevel();
                                                if ($getJob) {
                                                  while ($value = $getJob->fetch_assoc()) {
                                                    
                                              ?>
                                           <option value="<?php echo $value['levelId'];?>" ><?php echo $value['levelName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
                <div class="form-group" style="padding:2px">
                    <div class='input-group date' id='datetimepicker1'> <b> Last date of Application </b>
                        <input type='date' name="ldApplication" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
                <p> 
                                     <label for="sel1">Education</label>
                                        <select class="form-control" id="sellect" name="degId">
                                          <option>Minimum Education Required</option>
                                            <?php
                                                $getMedu = $allM->getMinimumedu();
                                                if ($getMedu) {
                                                  while ($value = $getMedu->fetch_assoc()) {
                                                    
                                              ?>
                                           <option value="<?php echo $value['degId'];?>" ><?php echo $value['degName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
                
                   
                  
                
               
                <p> 
                
                <div class="form-group" style="padding:2px">
                  <label for="usr">Minimum Monthly Compansation:</label>
                  <input type="text" name="mimcomp" class="form-control" id="compansation">
                </div>
                
                <div class="form-group" style="padding:2px">
                  <label for="usr">Maximum Monthly Compansation:</label>
                  <input type="text" name="mxmcomp" class="form-control" id="compansation">
                </div>
                
                <div class="form-group" style="padding:2px">
                    <div class='input-group date' id='datetimepicker1'> <b> Expected Joining Date </b>
                        <input type='date' name="expDate" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
                
                <div class="form-group" style="padding:2px">
                  <label for="usr">Pre-requisite For Joining</label>

                <textarea type="text" name="prerequisite" class="form-control" id="usr" placeholder="Pre-requisite for this job"> </textarea>
                
                
                </div>
                
                 <div class="form-group" style="padding:2px">
                  <label for="usr">Job Location</label>

                 <input type="text" name="joblocation" class="form-control" >
                
                
                </div>
                <button type="submit" name="submit" class="w3-button w3-block w3-section w3-green w3-ripple w3-padding" style="padding:2px">Submit</button>

                
            </form>
        </div>
      </div>
      <!-- /.row -->

      
      <!-- Main row -->
      <div class="row">
          
            </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 