<?php include_once "inc/header.php";?>
      <?php include_once "../Classes/module.php";?>


 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
          <center> Gap Analysis</center>
       
       
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
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
       
       
        <td>Date</td>
         <td>Gap</td>
        <td>Link</td>
       
      </tr>
    </thead>
    <tbody>
    <?php
     $allM = new Module();
        $getGapAnalysis = $allM->getGapAnalysis();
        if ($getGapAnalysis) {
            $i = 0;
            while($value = $getGapAnalysis->fetch_assoc()){
                $i++;

    ?>
   
      <tr>
      
        <td><?php echo $i ;?></td>
      
       

        <td><?php echo $value['date'];?></td>
        <td><?php echo $value['gap'];?></td>
        <td><?php echo $value['link'];?></td>
       
        
       
      


      </tr>
      <?php } } ?>
   
    </tbody>
  </table>
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