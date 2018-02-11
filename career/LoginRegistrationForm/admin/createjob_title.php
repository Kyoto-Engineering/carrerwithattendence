<?php include_once "inc/header.php";?>
  <?php include_once "../Classes/module.php";?>
<?php
    $allM = new Module();
     if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $jobtitle = $allM->jobTileCreate($_POST);
    }
?>

 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Create Job Title Here
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-md-12">
          <?php
                if (isset($jobtitle)) {
                    echo $jobtitle;
                }
            ?>
            <form action="" method="post" class="w3-container">
                
                <p>
                    <label>Job Title</label>
                    <input class="form-control" type="text" name="jobtitle" placeholder="Title of the job" required>
                </p>
                
                <br>
                
                <p>
                    <label>Job Description </label>
                    <textarea name="description" id="text" placeholder="Insert Job Description...."></textarea>
                            <script> CKEDITOR.replace( 'text' );</script>
                </p>
                
                <p>
                    <button type="submit" name="submit" class="w3-button w3-block w3-section w3-green w3-ripple w3-padding">Submit</button>
                </p>
                
    
            </form>
          
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