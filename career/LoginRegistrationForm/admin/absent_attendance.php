<?php include_once "inc/header.php";?>
 <?php include_once "../Classes/module.php";?>

      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
<?php
  $allM = new Module();
   if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
    $userId = $_POST['userId'];
    $jId    = $_POST['jId'];
    
    $attend = $allM->markabsent($userId, $jId);
   }
?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Interview Defiants</h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
     
      <div class="row">
      

      <div class="col-md-9">
      <span style="color: green;">
      <?php
        if (isset($attend)) {
         echo $attend;
        }
      ?>
      </span>
      <span style="font-style: italic; font-family: verdana;">
         
        </span>
        <br/><br/>
        <table class="table">
    <thead>
    
      <tr>
        <th>Id</th>
        <th>JobTitle</th>
        <th>Applicant Name</th>
        <th>Interview Date</th>
        <th>Start Time</th>
        <th>End Time</th>
        <th>Attendance</th>
       
        
        
      </tr>
    </thead>
    <tbody>
  <?php 
    $getAllone = $allM->getAbsent();
    if ($getAllone) {
      while ($value = $getAllone->fetch_assoc()) {
     
  ?>
      <tr class="success">
        <td><?php echo $value['id']?></td>
        <td><?php echo $value['jobtitle']?></td>
         <td><a href="applicant_details.php?user=<?php echo urlencode($userId);?>;&amp;jId=<?php echo urlencode($jId);?>"><?php echo $value['userName'];?></a></td></td> 
        <td><?php echo $value['interviewdate']?></td>
        <td><?php echo $value['starttime']?></td>
        <td><?php echo $value['endtime']?></td>
        <td>
        <?php
        if($value['attend'] == "2")
         echo "Absent";
       ?>
          
        </td>
       
  
      
    
     <td>
       <form action="" method="post">
       <input type="hidden" name="userId" value="<?php echo $value['userId']?>"/>
       <input type="hidden" name="jId" value="<?php echo $value['jId']?>"/>
      

    <td><button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Send Mail</button></td>
         

       </form> 
      </td>
    </tr>
    <?php } } ?>
    </tbody>
</table>

 

      </div>
      </div>
      <!-- /.row -->
      </section>
      <section class="content">

      
      <!-- Main row -->
      <div class="row">
      <section class="content-header">
      <h1>Interview Defiants (Re-Schedule)</h1>
      </section>



    
      <?php
         if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['mark'])){

          $userId = $_POST['userId'];
          $jId    = $_POST['jId'];
          $status = $_POST['attend'];
          $disattend = $allM->markdisappearattendence($status, $userId, $jId);
         }
      ?>

      <div class="col-md-9">
      <span style="color: green;">
      <?php
        if (isset($disattend)) {
         echo $disattend;
        }
      ?>
      </span>
      <span style="font-style: italic; font-family: verdana;">
         
        </span>
        <br/><br/>
        <table class="table">
       
    <thead>
    
      <tr>
        
        <th>Sl</th>
         <th>JobTitle</th>
        <th>Applicant Name</th>
        <th>Date</th>
        <th>Time</th>
        <th></th>
        
        
      </tr>
    </thead>
    <tbody>
  <?php 
    $getAllone = $allM->getallreparticipant();
    if ($getAllone) {
      $i = "0";
      while ($value = $getAllone->fetch_assoc()) {
     $i++;
  ?>
      <tr class="success">
       <td><?php echo $i;?></td>
        <td><?php echo $value['jobtitle']?></td>
        <td><a href="applicant_details.php?user=<?php echo urlencode($userId);?>;&amp;jId=<?php echo urlencode($jId);?>"><?php echo $value['userName'];?></a></td></td>  
        <td><?php echo $value['ddate']?></td>
        <td><?php echo $value['dtime']?></td>     
       
        
          
             

        <td>
       <form action="" method="post">
       <input type="hidden" name="userId" value="<?php echo $value['userId']?>"/>
       <input type="hidden" name="jId" value="<?php echo $value['jId']?>"/>
      <input class="w3-radio" type="radio"   name="attend" value="1">
                    <label>Present</label>
                    &nbsp;
                    <input class="w3-radio" type="radio"   name="attend" value="2">
                    <label>Absent</label></td>
    

    <td><button type="submit" name="mark" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Submit</button></td>
         

       </form> 
      </td>
    </tr>
    <?php } } ?>
      
    
    </tbody>
</table>

 

      </div>
      </div>

    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 