<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>
<?php include_once "helpers/Format.php";?>
<?php include_once "Classes/frontclass.php";?>


<?php
    $allF = new Front();
    $fm = new Format();

?>

<?php
    if (!isset($_GET['jobId']) || $_GET['jobId'] == NULL ) {
        echo "<script>window.location = '404.php'</script>";
      }else{
        $id = $_GET['jobId'];
      }
?>

<?php 

    $userId = Session::get("userId");
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        $dtime = $_POST['dtime'];
        $ddate = $_POST['ddate'];
        $reason = $_POST['reason'];
        
        $addApply = $allF->disapperSchedule($id, $userId, $dtime, $ddate, $reason);
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
  
  </div>
      </div>
            </div>
           <div class="container"> 
        <div class="row">
         <?php
                $getApply = $allF->getIsscheduleby($userId);
                if ($getApply) { ?>
                <h3>Interview Re_Schedule</h3>
                <?php
                    if (isset($addApply)) {
                      echo $addApply;
                    }
                ?>
            <div class="col-md-4">
                 <form action="" method="post">
                                 
                                   <div class="form-group">
                                        <label for="pwd">InterView Time:</label>
                                        <input type="Time" name="dtime" placeholder="Formate : HH : MM am/pm" class="form-control" id="pwd">
                                  </div>

                                 
                                  <div class="form-group">
                                        <label for="pwd">Start Date:</label>
                                        <input type="date" name="ddate" placeholder="Date Formate : YYYY-MM-DD" class="form-control" id="pwd">
                                  </div>

                                 

                                   

                                   <div class="form-group">
                                        <label for="exampleTextarea">Reason:</label>
                                        <textarea class="form-control" name="reason" id="exampleTextarea" rows="3"></textarea>
                                  </div>

                                  <p><button type="submit" name="submit" class="btn btn-primary">Submit Request</button></p>

        </form>
              
            </div>
           
 <?php } ?>
 <?php
  $getreDate = $allF->getApplicantReDate($userId);
  if($getreDate){
    while ($result = $getreDate->fetch_assoc()) {
 ?>
 <div class="col-md-4">
   <h5>My Selected Date: - <?php echo $fm->formDate($result['ddate']);?></h5>
   <h5>My Selected Time: - <?php echo $fm->formatTime($result['dtime']);?></h5>
 </div>
 <?php } } ?>
      <div class="col-md-4">

        <table class="table">
    <thead>
    
      <tr>
        <th>Sl</th>
        <th>Your Options</th>
        
        
      </tr>
    </thead>
    <tbody>
    <?php 
        $getTime = $allF->getPossibleschedule();
        if ($getTime) {
          $i = '0';
            while ($value = $getTime->fetch_assoc()) {
              $i++;
    ?>
      <tr class="success">
        <td><?php echo $i;?></td>
        <td><?php echo $fm->formDate($value['date']);?></td>
        
      </tr>
      <?php } } ?>
    </tbody>
</table>

      </div>
        </div>
        </div>
        </section>
       <br> <br>

<?php include_once "inc/footer.php";?>