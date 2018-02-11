<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
<?php
    if (!isset($_GET['uId']) || $_GET['uId'] == NULL ) {
        echo "<script>window.location = 'applied_job.php'</script>";
      }else{
        $uId = $_GET['uId'];
      }

?>


  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Applicant Name<br/>
        <small>Applicant Email</small><br/>
        <small>Applicant Phone</small>
       
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
      <div class="col-md-12 text-center">
       
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