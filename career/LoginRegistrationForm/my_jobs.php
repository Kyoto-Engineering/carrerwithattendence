<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>
<?php include_once "Classes/frontclass.php";?>


<?php
    $allF = new Front();

?>

<?php 

    $userId = Session::get("userId");
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        $jsid = $_POST['jsId'];
        
        $addApply = $allF->applyForjob($userId, $jsid);
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
                echo "<span style='color:green; font-weight:bold;'>In-Process</span>";
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
            <div class="col-md-6">
            <?php
                $getApply = $allF->getScheduleby($userId);
                if ($getApply) { ?>
                <h3>Interview Schedule</h3>
        <table class="table">
    <thead>
    
      <tr>
        <th>SL</th>
        <th>JobTitle</th>
        <th>Action</th>
        
      </tr>
    </thead>
    <tbody>
    <?php 
        $getTime = $allF->getAllIschedule($userId);
        if ($getTime) {
          $i = "<span style='color:red;'>***</span>";
            while ($value = $getTime->fetch_assoc()) {
          $i++;
    ?>
      <tr class="success">
        <td><?php echo $i;?></td>
        <td><?php echo $value['jobtitle'];?></td>
        <td> <a href="view_schedule.php?jobId=<?php echo $value['jId'];?>" class="btn btn-default add-to-cart">View Schedule</a></td>
      </tr>
      <?php } } ?>
    </tbody>
</table>
               <?php } ?>
            </div>

        </div>
        </div>
        </section>
       <br> <br>

<?php include_once "inc/footer.php";?>