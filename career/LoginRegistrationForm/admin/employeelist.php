<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>  
 <?php include_once "../Classes/attendence.php";?>  
<?php 
$atten = new Attendence();
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Employee List Panel  
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Main row -->
      <div class="row">
        <table class="table" style="max-width: 75%;">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Employee Id</th>
      <th scope="col">Name</th>
      <th scope="col">Office In Time</th>
      <th scope="col">Office Out Time </th>
      <th scope="col">Change Time</th>

    </tr>
  </thead>
  <tbody>
  <?php 
    $getapply = $atten->getAllemployee();
    if ($getapply) {
      $i = '0';
    while ($data = $getapply->fetch_assoc()) {
      $i++;
  ?>
    <tr>
    <?php 
      $uId = $data['userId'];
    ?>
      <th scope="row"><?php echo $i; ?></th>
      <td><a href="employeedetails.php?userId=<?php echo $data['userId'];?>"><?php echo $data['id']; echo $data['userName']; echo $data['userId'] ?></a></td>
      <td><?php echo $data['userName'];?></td>
      <td><?php echo $data['defultInTime'];?></td>
      <td><?php echo $data['defultOuttime'];?></td>
      <td><a href="employeedetails.php?userId=<?php echo $data['userId'];?>"><input type="button" name="button" value="Change Time"></a></td>
    <!--   <?php 
        //if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        //$addSchedule = $atten->saveEmployeeId($_POST, $uId);
       //}
      ?>
      <td>
      <?php 
        //if (isset($addSchedule)) {
          //echo $addSchedule;
        //}
      ?>
      <form action="" method="POST">
      <input type="hidden" name="eId" value="<?php //echo $data['id'];echo $data['userName'];echo $data['userId'];?>">
      <input type="submit" name="submit" value="Save Employee Id">
      <form>
      </td> -->
    </tr>
<?php } } ?>
  </tbody>
</table>
      </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 