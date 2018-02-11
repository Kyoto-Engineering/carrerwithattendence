<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
<?php include_once "../Classes/atteninsert.php";?>
<?php
   $atten = new attendenceInsert();
?>
<?php 
  $dateTime = date_default_timezone_set('Asia/Dhaka');
  // $serverIP = $_SERVER["REMOTE_ADDR"];
  $timestamp = time();
  $date = date("Y-m-d");
  $day = date("(D)");
  $time = date("H:i:s",$timestamp);
  $month = date('M');
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Control panel
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      
      <!-- Main row -->

      <?php
    
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
      $attendence = $atten->insertip($_POST, $date, $time);
    }
?>
<div class="row">
<div class="col-md-6" style="background-color: #eee;
width: 30%;
padding: 20px 15px;
margin-left: 10px;">
<?php 
    if(isset($attendence)){
      echo $attendence;
    }
?>
  <form action="" method="post" style="padding:2px">

    <label for="sel1">IP:</label>
    <input type="text" name="ip" class="form-control"><br/>

 

     <button type="submit" name="submit" class="btn btn-lg btn-primary">Done</button>
   
</form>
</div>

<div class="col-md-6">
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Date</th>
      <th scope="col">Time</th>
      <th scope="col">IP</th>
           
    </tr>
  </thead>
  <tbody>

  <?php
  $getInfo = $atten->getapproveip();
  if ($getInfo) {
    $i = 0;
    while($data = $getInfo->fetch_assoc()){
      $i++;
  ?>
    <tr>
      <th scope="row"><?php echo $i;?></th>
      <td><?php echo $data['datee'];?></td>
      <td><?php echo $data['timee'];?></td>
      <td><?php echo $data['ip'];?></td>
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