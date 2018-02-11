<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?> 

  <?php include_once "../Classes/attendence.php";?>   
  <?php include_once "../Classes/atteninsert.php";?>
  <?php
    if (!isset($_GET['userId']) || $_GET['userId'] == NULL ) {
        
      }else{
        $uId = $_GET['userId'];
      }

?> 

<?php 
  $dateTime = date_default_timezone_set('Asia/Dhaka');
  $serverIP = $_SERVER["REMOTE_ADDR"];
  $timestamp = time();
  $date = date("Y-m-d");
  $day = date("(D)");
  $time = date("H:i:s",$timestamp);
  $month = date('M');
?>
<?php 
    $att = new Attendence();
    $atten = new attendenceInsert();
?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    <div class="row">
      <!-- /.row -->  
      <!-- Main row -->
      <div class="row">
       <?php 
        $getdata = $att->getEmployeDetails($uId);
        if ($getdata) {
          while ($data = $getdata->fetch_assoc()) { ?>

       <div class="col-md-6">
        <h3><?php echo $data['id']; echo $data['user']; echo $data['userId'];?></h3>
         <h3><?php echo $data['user'];?></h3>
         <p><?php echo $data['email'];?></p>
         <p><?php echo $data['phone'];?></p>
         
       </div>
       <?php } } ?>
       <div class="col-md-6">
        <div>
          <img src="uploads/image" alt="Employee Picture">
        </div> 
       </div> 
       </div>

       <div class="row">
       <?php 
        $getdata = $att->getEmployetime($uId);
        if ($getdata) {
          while ($data = $getdata->fetch_assoc()) { ?>
         <div class="col-md-6">
          <h4> Office In Time = <?php echo $data['defultInTime'];?></h4>
          <h4> Office Out Time = <?php echo $data['defultOuttime'] ?></h4>
         </div>
         <?php } } ?>

<?php 

    
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){

        $addSchedule = $att->CreateofficeSchedule($_POST, $uId);
        $insertSchedule = $atten->insertofficeSchedule($_POST, $uId, $date);
    }
 
?>
         <form action="" method="POST">

         <div class="col-md-6">
         <?php 
          if (isset($addSchedule)) {
            echo $addSchedule;
          }
         ?>
          <div class="set" style="width: 40%;">
          <label for="sel1">Defult In Time:</label>
           <input type="time" name="defultInTime" class="form-control">
           <br/>
           <label for="sel1">Defult Out Time:</label>
           <input type="time" name="defultOuttime" class="form-control">
           <input type="submit" name="submit" value="Set Time">
           </div>
         </div>
         </form>
       </div>
      </div>
           
  <?php 

    
     if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['set'])){

         $grade = $_POST['grade'];
        $addgrade = $atten->addgrade($grade, $uId);
   }
 
?>  
<br><br>
         <div class="row">

           <div class="col-md-6">
  <?php 
    if (isset($addgrade)) {
      echo $addgrade;
    }
  ?>
           <form action="" method="post">
           <label for="sel1">Set Employee Grade:</label>
    <select class="form-control" name="grade">
      <option>---</option>
<?php
  $getInfo = $atten->getgradelist();
  if ($getInfo) {
    $i = 0;
    while($data = $getInfo->fetch_assoc()){
      $i++;
  ?>                              
        <option value="<?php echo $data['id']?>"><?php echo $data['grade']?></option> 
      <?php } } ?>
         
                                   
      </select>
       <br/>
       <input type="submit" name="set" value="Set Grade">
       </form>
           </div>

         <?php 

    
     if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['status'])){

        $estat = $_POST['estat'];
        $addgrade = $atten->updatestatus($_POST, $uId);
        $addstatus = $atten->insertstatus($_POST, $uId, $date);
   }
 
?>     

           <div class="col-md-6">

           <form action="" method="post">
<label for="sel1">Set Employee Status:</label>
    <select class="form-control" name="estat">
      <option>---</option>
<?php
  $getInfo = $atten->getestatus();
  if ($getInfo) {
    $i = 0;
    while($res = $getInfo->fetch_assoc()){
      $i++;
  ?>                              
        <option value="<?php echo $res['id']?>"><?php echo $res['estat']?></option> 
      <?php } } ?>
         
                                   
      </select>
       <br/>
       <input type="submit" name="status" value="Employee Status">
 </form>
         </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 