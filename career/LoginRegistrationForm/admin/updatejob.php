<?php include_once "inc/header.php";?>
<?php include_once "../Classes/module.php";?>

 <?php include_once "inc/sidebar.php";?>  

 <?php
 $allM = new Module();
 if ($_GET['jobId'] ) {
   $jid=$_GET['jobId'];
 }
 ?>
 <?php
   
     if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $userjob = $allM->jobInput($_POST);
    }
?>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Control panel
       
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
            <h3 id="Header"> Job Advertisement Form</h3>
            <span style="color:green">
            <?php
              if (isset($userjob)) {
                  echo $userjob;
              }
            ?>
            </span>
            <br>
           <?php
           
           $getData=$allM->getAllData($jid);
           if ( $getData) {
             while ($result=$getData->fetch_assoc()) {
           ?>
             <form action="" method="post" style="padding:2px">
                                  <p> 
                                     <label for="sel1">Job Title</label>
                                        <select class="form-control" id="sellect" name="jId">
                                          <!--<option><?php //echo $result['jobtitle'];?></option>-->
                                           <?php
                                             $getJob = $allM->getAlljobs();
                                              if ($getJob) {
                                                while ($value = $getJob->fetch_assoc()) {
                                                  
                                            ?>
                                           <option
                                           <?php 
                                           if($value['jId'] == $result['jId']){?>
                                               selected = "selected";
                                           <?php } ?>
                                           value="<?php echo $value['jId'];?>" ><?php echo $value['jobtitle'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
              
                                    <p> 
                                     <label for="sel1">Department</label>
                                        <select class="form-control" id="sellect" name="dId">
                                          <!--<option><?php //echo //$result['deptName'];?></option>-->
                                            <?php
                                                $getdept = $allM->getAllDept();
                                                if ($getdept) {
                                                  while ($value = $getdept->fetch_assoc()) {
                                                    
                                              ?>
                                           <option
                                                                                      <?php 
                                           if($value['dId'] == $result['dId']){?>
                                               selected = "selected";
                                           <?php } ?>
                                           value="<?php echo $value['dId'];?>" ><?php echo $value['deptName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
                                <div class="form-group" style="padding:2px">
                  <label for="usr">Batch:</label>
                  <input type="text" name="batch" class="form-control" value="<?php echo $result['batch'];?>">
                </div>
                                 <p> 
                                     <label for="sel1">Job Level</label>
                                        <select class="form-control" id="sellect" name="levelId">
                                          <!--<option><?php //echo $result['levelName'];?></option>-->
                                            <?php
                                                $getJob = $allM->getJoblevel();
                                                if ($getJob) {
                                                  while ($value = $getJob->fetch_assoc()) {
                                                    
                                              ?>
                                           <option
                                           <?php
                                           if($value['levelId'] == $result['levelId']){?>
                                               selected = "selected";
                                          <?php } ?>
                                           value="<?php echo $value['levelId'];?>" ><?php echo $value['levelName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
                <div class="form-group" style="padding:2px">
                    <div class='input-group date' id='datetimepicker1'> <b> Last date of Application </b>
                        <input type='date' name="ldApplication" class="form-control" value="<?php echo $result['ldApplication'];?>"/>
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
                <p> 
                                     <label for="sel1">Education</label>
                                        <select class="form-control" id="sellect" name="degId">
                                          <!--<option><?php //echo $result['degName'];?></option>-->
                                            <?php
                                                $getMedu = $allM->getMinimumedu();
                                                if ($getMedu) {
                                                  while ($value = $getMedu->fetch_assoc()) {
                                                    
                                              ?>
                                           <option
                                           <?php
                                            if($value['degId'] == $result['degId']){?>
                                               selected = "selected"; 
                                            <?php } ?>
                                           value="<?php echo $value['degId'];?>" ><?php echo $value['degName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
                
                   
                  
                
               
                <p> 
                
                <div class="form-group" style="padding:2px">
                  <label for="usr">Minimum Monthly Compansation:</label>
                  <input type="text" name="mimcomp" class="form-control" id="compansation" value="<?php echo $result['mimcomp'];?>">
                </div>
                
                <div class="form-group" style="padding:2px">
                  <label for="usr">Maximum Monthly Compansation:</label>
                  <input type="text" name="mxmcomp" class="form-control" id="compansation" value="<?php echo $result['mxmcomp'];?>">
                </div>
                
                <div class="form-group" style="padding:2px">
                    <div class='input-group date' id='datetimepicker1'> <b> Expected Joining Date </b>
                        <input type='date' name="expDate" class="form-control" value="<?php echo $result['expDate'];?>"/>
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
                
                <div class="form-group" style="padding:2px">
                  <label for="usr">Pre-requisite For Joining:</label>

                <textarea type="text" name="prerequisite" class="form-control" id="usr" placeholder="Pre-requisite for this job" ><?php echo $result['prerequisite'];?></textarea>
                </div>
                
                <button type="submit" name="submit" class="w3-button w3-block w3-section w3-green w3-ripple w3-padding" style="padding:2px">Submit</button>

                
            </form>
            <?php } } ?>
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