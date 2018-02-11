<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
<?php include_once "../Classes/interviewclass.php";?>
 <?php include_once "../helpers/Format.php";?>

  <?php
     $allI = new Interview();
     $fm = new Format();
 ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Board Name
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
    
      <!-- /.row -->

      
      <!-- Main row -->
      <div class="row">
      <?php 
        $getB = $allI->getBoardname();
        if ($getB) {
          while($data = $getB->fetch_assoc()){
      ?>
        <div class="col-md-6">
          <table>
            <tr>
              <td><a href="applicant_list.php?idate=<?php echo $data['iDate']?>"><?php echo $data['boardname']?></a></td>
            </tr>
          </table>
        </div>
      <?php } } ?>
      </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 