<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>
<?php include_once "Classes/frontclass.php";?>


<?php
    $allF = new Front();


?>

<?php
    if (!isset($_GET['jobId']) || $_GET['jobId'] == NULL ) {
        echo "<script>window.location = '404.php'</script>";
      }else{
        $jobId = $_GET['jobId'];
      }
?>

<?php 

    $userId = Session::get("userId");
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        $status = $_POST['status'];
        
        $addApply = $allF->responseForjob($status, $userId);
    }
 
?>

        

        
<br/><br/>
        
        
        <div class="container">
            <h3>My Applied Joblist</h3>
            

               <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-md-12 col-sm-6">
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Applicant</td>
        <td>Job Title</td>
        <td>Department</td>
        <td>Job level</td>
        <td>Last date of Application</td>
        <td>Education</td>
        
        <td>Min Compansation</td>
        <td>Mxn Compansation</td>
        <td>Expected Joining Date</td>
        <td>Pre-requisite For Joining</td>
        <td>Action</td>
        

      </tr>
    </thead>
    <tbody>
    <?php
        $getCandidate = $allF->getjCadidate($userId);
        if ($getCandidate) {
            $i = 0;
            while($value = $getCandidate->fetch_assoc()){
                $i++;

    ?>
      <tr class="info">
        <td><?php echo $i ;?></td>
        <td><?php echo $value['userName'];?></td>
        <td><?php echo $value['jobtitle'];?></td>
        <td><?php echo $value['deptName'];?></td>
        <td><?php echo $value['levelName'];?></td>
        <td><?php echo $value['lastdApplication'];?></td>
        <td><?php echo $value['degName'];?></td>
        <td><?php echo $value['mimcomp'];?></td>
        <td><?php echo $value['mxmComp'];?></td>
        <td><?php echo $value['expDate'];?></td>
        <td><?php echo $value['preRequisite'];?></td>
        <td>
        <?php// echo $value['status'];?>
        <?php
            if ($value['status'] == "0") {
                echo "<span style='color:red; font-weight:bold;'>Pending</span>";
            }elseif ($value['status'] == "1") {
                echo "<span style='color:green; font-weight:bold;'>Selected</span>";
            }elseif ($value['status'] == "2") {
                echo "<span style='color:red; font-weight:bold;'>Deselected</span>";
            }else{
               echo "<span style='color:green; font-weight:bold;'>Confirm</span>"; 
            }

        ?>
            
        </td>
        
       

      </tr>


   <?php } } ?>
    </tbody>
  </table>
  <?php

  ?>
  </div>
      </div>
            </div>
           <div class="container"> 
        <div class="row">
         <?php
                $getApply = $allF->getScheduleby($userId);
                if ($getApply) { ?>
                <h3>Interview Schedule</h3>
            <div class="col-md-6">

            <?php
              $getstat = $allF->getinterviewstatus($userId, $jobId);
              if ($getstat) {
                while($value = $getstat->fetch_assoc()){
                  if ($value['status'] == "1") {
                     echo "<span style='color:green; font-weight:bold;'>You Are Performing This InterView</span>";
                  }elseif ($value['status'] == "2") {
                    echo "<span style='color:red; font-weight:bold;'>You Reject This InterView</span>";
                  }
                }
              }
            ?>


           <?php
              if (isset($addApply)) {
               echo $addApply;
              }
           ?>
        <table class="table">
    <thead>
    
      <tr>
        <th>SL</th>
        <th>JobTitle</th>
        <th>Date</th>
        <th>Start Time</th>
        <th>End Time</th>
        <th>Venue</th>
        
      </tr>
    </thead>
    <tbody>
    <?php 
        $getTime = $allF->getIscheduleby($userId, $jobId);
        if ($getTime) {
          $i = "<span style='color:red;'>***</span>";
            while ($value = $getTime->fetch_assoc()) {
          $i++;
    ?>
      <tr class="success">
        <td><?php echo $i;?></td>
        <td><?php echo $value['jobtitle'];?></td>
        <td><?php echo $value['interviewdate'];?></td>
        <td><?php echo $value['starttime'];?></td>
        <td><?php echo $value['endtime'];?></td>
        <td><?php echo $value['venue'];?></td>
        

        
      </tr>
     
      <?php } } ?>
    </tbody>
</table>


<form action="" method="post" class="form-inline">

    
       <input class="w3-radio" type="radio"   name="status" value="1" checked>
        <label>I am Perticipating</label>
       
    

    
         <input class="w3-radio" type="radio"   name="status" value="2">
         <label>I am Not Perticipating</label>
    
    <br/><br/>

    <p><input type="submit" name="submit" value="Submit"></p>

</form>

              
            </div>
            <div class="col-md-6">
             <?php 
            $getTime = $allF->requestscheduleby($jobId);
            if ($getTime) {
             
                while ($value = $getTime->fetch_assoc()) {
              
    ?>
      <a href="re_schedule.php?jobId=<?php echo $value['jId'];?>" class="btn btn-default add-to-cart">Request For Re-Schedule</a>
      <?php } } ?>
            </div>
 <?php } ?>
        </div>
        </div>
        </section>
       <br> <br>

<?php include_once "inc/footer.php";?>