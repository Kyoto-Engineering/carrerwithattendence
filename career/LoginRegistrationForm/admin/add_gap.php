<?php include_once "inc/header.php";?>
<?php include_once "../Classes/module.php";?>
<?php
if (isset($_GET['user'])) {
  $uId = $_GET['user'];
}
?>
<?php
    $allM = new Module();
     if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $gap = $allM->gapCreate($_POST, $uId);
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
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-md-6">
            
            <h3 id="Header"> Insert Gap </h3><br><br>
            <?php
                if (isset($gap)) {
                    echo $gap;
                }
            ?>
            
            
            <form action="" method="post" class="w3-container">
                
                <p>
                    <label>Insert Gap:</label>
                    <textarea name= "gap" rows="4" cols="50">

                     </textarea>
                </p>
                
                <br>
                
                
                <p>
                    <button type="submit" name="submit" class="w3-button w3-block w3-section w3-green w3-ripple w3-padding">Submit</button>
                </p>
                
    
            </form>
        </div>
      </div>
      <!-- /.row -->

      
      <!-- Main row -->
  
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 