<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <?php include_once "../Classes/attendence.php";?>
      <?php include_once "../Classes/module.php";?>
        <?php include_once "../Classes/atteninsert.php";?>
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->

<?php 
$atten = new Attendence();
$att = new attendenceInsert();
?>
 
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
             <A HREF="javascript:window.print()"><button class="btn btn-success btn-sm">
      <span class="glyphicon glyphicon-print"></span> Print </button>
    </A> 
      <ol class="breadcrumb">
        <li class="active">Dashboard</li>
      <form action="" method="post">
        <input class ="form-control" type="date" name="date"><input type="submit" name="search" value="search">       
      </form>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      
      <br/><br/><br/>
      
      <!-- Main row -->
<div class="row">
<div class="col-md-12 text-center">
  <h2>Attendance sheet</h2>
  <?php 
    if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['search'])) {
    $date = $_POST['date'];
    $getapply = $atten->getdateby($date);
    if ($getapply) {
    while ($data = $getapply->fetch_assoc()) {
  ?>
  <h3>Date : <?php echo $data['attendence_date'];?>&nbsp;&nbsp;Day: <?php echo $data['day'];?></h3>
  <?php } } } ?>  
</div>
<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <!-- <th scope="col">#</th> -->
      <th scope="col">Employee<br/>ID</th>
      <th scope="col">Name</th>
      <th scope="col">Date</th>
      <th scope="col">Day</th>
      <th scope="col">In Time</th>
      <th scope="col">Reason<br>Late</th>
      <th scope="col">Reason<br>Early</th>
      <th scope="col">Out<br>Time</th>
      <th scope="col">Employee<br>Remarks</th>
      <th scope="col">HR<br>Remarks</th>
      <th scope="col">Status</th>
      <th scope="col">Signature</th>
    </tr>
  </thead>
  <tbody>
    <?php 
    
    if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['search'])) {
    $date = $_POST['date'];
    $getapply = $atten->getemployeeId($date);
    if ($getapply) {
    while ($data = $getapply->fetch_assoc()) {
    ?>
<tr>
  <?php
    $uId = $data['userId'];
  ?>
  <!-- <th scope="row"><?php //echo $i;?></th> -->
  <td><?php echo $data['eId'];echo $data['userName'];echo $data['userId']; ?></td>
  <td><?php echo $data['userName'];?></td>
  <td><?php echo $data['attendence_date'];?></td>
  <td><?php echo $data['day'];?></td>
  <td><?php echo $data['attendence_time'];?></td>
  <td><?php echo $data['late_reason'];?></td>
  <td><?php echo $data['early_leave'];?></td>
  <td><?php echo $data['outtime'];?></td>
  <td><?php 
    $getapply = $att->getemployeestat($uId);
    if ($getapply) {
    while ($data = $getapply->fetch_assoc()) {
    ?>

    <?php
      if ($data['employeestat'] == "8") {
        echo "Joined/Active";
      }elseif ($data['employeestat'] == "9") {
        echo "Liend/Inactive";
      }elseif ($data['employeestat'] == "10") {
        echo "Resign/Inactive";
      }elseif ($data['employeestat'] == "11") {
        echo "Resign/Inactive";
      }elseif ($data['employeestat'] == "12") {
        echo "Heldup/Inactive";
      }elseif ($data['employeestat'] == "13") {
        echo "Suspended/Inactive";
      }elseif ($data['employeestat'] == "14") {
        echo "Longterm/Leave";
      }else{
        echo "Not Status";
      }

    ?>
  


 <?php } } ?>
    

  </td>
  <td><?php //echo $data['hr_remark'];?></td> 
  <td><?php 
  if($data['status'] == "1"){
    echo "PRESENT";
    }else{
      echo "ABSENT";
      }?></td> 
  <td></td> 

</tr>
  <?php } } } ?>  
  </tbody>
</table>
      </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 