<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
<?php include_once "../Classes/atteninsert.php";?>
<?php
   $atten = new attendenceInsert();
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
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <table class="table table-sm table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Si</th>
      <th scope="col">Grade</th>
      <th scope="col">Designation</th>
      <th scope="col">Type</th>
      <th scope="col">BasicAmmount</th>
      <th scope="col">HouseRent</th>
      <th scope="col">HouseRent Ammount</th>
      <th scope="col">Medical</th>
      <th scope="col">Transport Allowence</th>
      <th scope="col">Other Allowence</th>
      <th scope="col">cellPhoneCredit</th>
      <th scope="col">Total</th>
      <th scope="col">Hypothetical Tax</th>

    </tr>
  </thead>
  <tbody>
  <?php
  $getInfo = $atten->getgradesheet();
  if ($getInfo) {
    $i = 0;
    while($data = $getInfo->fetch_assoc()){
      $i++;
  ?>

    <tr>
      <th scope="row"><?php echo $i;?></th>
      <td><?php echo $data['si']?></td>
      <td><?php echo $data['grade']?></td>
      <td><?php echo $data['designation']?></td>
      <td><?php echo $data['type']?></td>
      <td><?php echo $data['basicAmount']?></td>
      <td><?php echo $data['houseRent']?></td>
      <td><?php echo $data['houseRentAmount']?></td>
      <td><?php echo $data['medical']?></td>
      <td><?php echo $data['transportAllowance']?></td>
      <td><?php echo $data['othersAllowance']?></td>
      <td><?php echo $data['cellPhoneCredit']?></td>
      <td><?php echo $data['total']?></td>
      <td><?php echo $data['hypotheticalTax']?></td>

    </tr>
    <?php } } ?>
  </tbody>
</table>
      </div>
      <!-- /.row -->
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 