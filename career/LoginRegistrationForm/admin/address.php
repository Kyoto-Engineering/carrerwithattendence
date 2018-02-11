<?php include_once "inc/header.php";?>
 <?php include_once "../Classes/schedule.php";?>
  <?php include_once "../Classes/resume.php";?>

      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
 <?php
      $time = new Schedule();
      /*if (isset($_GET['delete'])) {
      $Did = $_GET['delete'];
      $delCat = $edu->delByid($Did);
    }*/
  ?>
  <?php
    if (!isset($_GET['application']) || $_GET['application'] == NULL ) {
        
      }else{
        $uId = $_GET['application'];
      }

?> 
 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Address</h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <?php
        if (isset($addSchedule)) {
          echo $addSchedule;
        }
      ?>
      <div class="row">
      
      <?php
        $getadd = $time->getAlladdressby($uId);
        if ($getadd) {
         while ($value = $getadd->fetch_assoc()) {
         
      ?>
       <h4>Present Address</h4>
      <div class="col-md-5">
        
                  <br>
                  <h5>Flat:  <?php echo $value['flat']; ?></h5>
                  <h5>Holding:  <?php echo $value['holding']; ?></h5>
                  <h5>Building:  <?php echo $value['building']; ?></h5>
                  <h5>Road:  <?php echo $value['road']; ?></h5>
                  <h5>Block:  <?php echo $value['block']; ?></h5>
                  <h5>Area:  <?php echo $value['area']; ?></h5>
                  <h5>Divission:  <?php echo $value['divName']; ?></h5>
                  <h5>District:  <?php echo $value['distName']; ?></h5>
                  <h5>Thana:  <?php echo $value['thName']; ?></h5>
                  <h5>Post:  <?php echo $value['postName']; ?></h5>

              </div><!--address end-->
<?php } } ?>


       <?php
        $getpadd = $time->getPaddressby($uId);
        if ($getpadd) {
         while ($value = $getpadd->fetch_assoc()) {
         
      ?>
      <h4>Permanent Address</h4>
      <div class="col-md-5">
        <h5>Flat:  <?php echo $value['flat']; ?></h5>
        <h5>Holding:  <?php echo $value['holding']; ?></h5>
        <h5>Building:  <?php echo $value['building']; ?></h5>
        <h5>Road:  <?php echo $value['road']; ?></h5>
        <h5>Block:  <?php echo $value['block']; ?></h5>
        <h5>Area:  <?php echo $value['area']; ?></h5>
        <h5>Divission:  <?php echo $value['divId']; ?></h5>
        <h5>District:  <?php echo $value['distName']; ?></h5>
        <h5>Thana:  <?php echo $value['thName']; ?></h5>
        <h5>Post:  <?php echo $value['postName']; ?></h5>
      </div>
      <?php } } ?>
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