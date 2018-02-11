<?php include_once "inc/header.php";?>
    <?php include_once "../Classes/module.php";?>

<?php
    $allM = new Module();
     
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
         <table class="table">
                    <thead>
                      <tr>
                      <th>Sl</th>
                        <th>Department</th>
                        
                      </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                      $getsp = $allM->getAllspecializ();
                       if ($getsp) {
                        $i=0;
                           while ($value = $getsp->fetch_assoc()) {
                              $i++;
                         
                    ?>
                      <tr>
                      <td><?php echo $i;?></td>
                        <td><?php echo $value['specialization'];?></td>
                        
                      </tr>
                      </tr>
                      <?php } } ?>
                    </tbody>
                  </table>

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