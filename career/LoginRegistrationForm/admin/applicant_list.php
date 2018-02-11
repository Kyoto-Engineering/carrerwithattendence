 <?php include_once "inc/header.php";?>
     
 <?php include_once "inc/sidebar.php";?>    
  <?php include_once "../Classes/schedule.php";?>
  <?php include_once "../helpers/Format.php";?>
 
<?php 
  $time = new Schedule();
    $fm = new Format();
?>

<?php
  if (isset($_GET['idate'])) {
    $idate = $_GET['idate'];
  }
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1><center>
        Applicants List For Interview
       </center>
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
      <div class="col-md-8">
        <table class="table">
    <thead>
      <tr>
        <th>Sl</th>
          <th>Interview Date</th>
        <th>Firstname</th>
      
        
       
        

       
        
      </tr>
    </thead>
    <tbody>
          <?php 

            $getApplicant = $time->getInterviewApplicant($idate);
            if ($getApplicant) {
              $i ="0";
              while ($value = $getApplicant->fetch_assoc()) {
                          $i++;
          ?>
      <tr class="success">
       
        <td><?php echo $i;?></td>
        <td><?php echo $value['interviewdate'];?></td>
         <td><?php echo $value['userName'];?></td>
       
       <td><a href="provide_score.php?id=<?php echo $value['userId'];?>"><button> Provide Score </button></a></td>
        
        
        

        
       
        

      <?php } } ?>
     
    </tbody>
  </table>
      </div>
      </div>
      <!-- /.row -->

      
      <!-- Main row -->
     
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 
