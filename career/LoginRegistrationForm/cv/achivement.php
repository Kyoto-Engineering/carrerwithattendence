<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
<?php include "../Classes/cvMaker.php";?>

<?php
    $allM = new Module();
     if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $achivement = $allM->addAchivement($_POST, $userId);
    }
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Your Achivement
         <?php
                if (isset($achivement)) {
                    echo $achivement;
                }
            ?> 
      </h1>
      <ol class="breadcrumb">
        <li><a href="../index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    

    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-6">
         
             <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3>  </h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Your Achivement</label>
                  <input type="text" name="achivement" class="form-control" id="exampleInputEmail1" placeholder="Enter Language You Know">
                </div>

                <div class="form-group">
                  <label>Details</label>
                  <textarea class="form-control" name="detail" rows="3" placeholder="Enter ..."></textarea>
                </div>

              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
    <!-- /.content -->
   
    </div>
    </div>
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 