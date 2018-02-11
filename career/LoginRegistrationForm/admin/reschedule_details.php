<?php include_once "inc/header.php";?>
 <?php include_once "../Classes/resume.php";?>
<?php include_once '../helpers/format.php';?>

      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    

  <?php
    $edu = new Resume();
    $fm = new Format();
    if (!isset($_GET['uid']) || $_GET['uid'] == NULL ) {
        
      }else{
        $id = $_GET['uid'];
      }

?> 
  <?php 

    
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        $status = $_POST['status'];
        
        $CSchedule = $edu->Confirmschedule($status, $id);
    }
        
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Re-Scheduling Details</h1>
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
      <span style="font-style: italic; font-family: verdana;">
          <?php
            if (isset($CSchedule)) {
              echo  $CSchedule;
            }
          ?>
        </span>
        <br/><br/>
        <?php 
         $getSche = $edu->getrescheduleJob($id);
          if ($getSche) {
            
            while ($value = $getSche->fetch_assoc()) {
             
    ?>
    <h4><span style='font-weight: bold;'>Applicant Name:</span>&nbsp;<span style='font-family: sans-serif;'> <?php echo $value['userName'];?></span>&nbsp;</h4>
    <h5><span style='font-weight: bold;'>Apply For:</span>&nbsp;<span style='font-family: sans-serif;'>  <?php echo $value['jobtitle'];?></span>&nbsp;</h5>
    
    <p><span style='font-weight: bold;'>Requested Date:</span>&nbsp;<span style='font-family: sans-serif;'>    <?php echo $fm->formDate($value['ddate']);?></span>&nbsp;</p>
    <p><span style='font-weight: bold;'>Requested Time:</span>&nbsp;<span style='font-family: sans-serif;'>    <?php echo $fm->formatTime($value['dtime']);?></span>&nbsp;</p>
    <p><span style='font-weight: bold;'>Reason For Re-schedule:</span>&nbsp;<br/><span style='font-family: sans-serif;'>  <?php echo $value['reason'];?></span>&nbsp;</p>
    <?php } } ?>
 <div class="container">
 
  <form action="" method="POST">

    <input class="w3-radio" type="radio"   name="status" value="1">
                    <label>Accept</label>
                    &nbsp;
                    <input class="w3-radio" type="radio"   name="status" value="2">
                    <label>Reject</label>
    <br/><br/>

    <p><button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Submit</button></p>

  </form>
</div>

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