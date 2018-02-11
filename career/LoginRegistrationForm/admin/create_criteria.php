<?php include_once "inc/header.php";?>
<?php include_once "../Classes/module.php";?>
<?php
    $allM = new Module();
     if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $create_criteria = $allM->criteriaCreate($_POST);
    }
?>
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Control panel
       
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
         <div class="col-md-8">
                

                        <h3 id="Header"> Criteria Input Form</h3>
                    <?php
                        if (isset($create_criteria)) {
                            echo $create_criteria;
                        }
                    ?>
                    <br>
                       <form action="" method="POST">
                          <div class="form-group">
                            <label for="dept_name">Criteria Name: </label>
                            <input type="text" name="criteriaName" class="form-control">
                          </div>
                           
                         
                           
                          <button type="submit" name="submit" class="w3-button w3-block w3-section w3-green w3-ripple w3-padding">Submit</button>
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