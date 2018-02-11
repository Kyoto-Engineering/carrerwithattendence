<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
<?php include "../Classes/cvMaker.php";?>

<?php
    $allM = new Module();
     if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $phi = $allM->addPhilosophy($_POST, $userId);
    }
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Your Career Philosophy
<?php
 if(isset($phi)){
     echo $phi;
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
              <h3>       </h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form  action="" method="post">
              <div class="box-body">
                <div class="form-group">
                  <span style="color:red; font-size: 14px;">(1)</span> <label>How you plan your career and how you choose a job? </label>
                  <input type="text"  name="ques1" class="form-control" id="exampleInputEmail1" placeholder="Enter Your Skill">
                </div>

                <div class="form-group">
                   <span style="color:red; font-size: 14px;">(2)</span>  <label>What skills help you thrive in your work?</label>
                 <input type="text"  name="ques2" class="form-control" id="exampleInputEmail1" placeholder="Enter Your Skill">
                </div>
                <div class="form-group">
                   <span style="color:red; font-size: 14px;">(3)</span> <label>What do you consider to be your greatest strength?</label>
                 <input type="text"  name="ques3" class="form-control" id="exampleInputEmail1" placeholder="Enter Your Skill">
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