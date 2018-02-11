<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
<?php include "../Classes/cvMaker.php";?>

<?php
     $allM = new Module();
      if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $phi = $allM->addlanguage($_POST, $userId);
    }
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Language Skill You Have
       
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
              <h3><?php
                     if(isset($phi)){
                         echo $phi;
                    }
               ?></h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="" method="POST">

              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Language</label>
                  <input type="text" name="flang" class="form-control" id="exampleInputEmail1" placeholder="Enter Language You Know">
                </div>
                   <div class="form-group">
              <label for="sel1">Reading level:</label>
              <select class="form-control" name="reading">
               <option>Choose Level</option>
                    <option value="Excellent">Excellent</option>
                    <option value="very Good">Very Good</option>
                    <option value="Good">Good</option>
                    <option value="Normal">Normal</option>
                    <option value="No Level">No level</option>
              </select>
  </div>
    <div class="form-group">
              <label for="sel1">Writing level:</label>
              <select class="form-control" name="writing">
              <option>Choose Level</option>
                    <option value="Excellent">Excellent</option>
                    <option value="very Good">Very Good</option>
                    <option value="Good">Good</option>
                    <option value="Normal">Normal</option>
                    <option value="No Level">No level</option>
              </select>
            </div>
<div class="form-group">
              <label for="sel1">Speaking level:</label>
              <select class="form-control" name="speaking">
              <option>Choose Level</option>
                    <option value="Excellent">Excellent</option>
                    <option value="very Good">Very Good</option>
                    <option value="Good">Good</option>
                    <option value="Normal">Normal</option>
                    <option value="No Level">No level</option>
              </select>
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