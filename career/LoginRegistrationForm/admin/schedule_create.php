<?php include_once "inc/header.php";?>
 <?php include_once "../Classes/schedule.php";?>

      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
 <?php
      $time = new Schedule();
      if (isset($_GET['delete'])) {
      $Did = $_GET['delete'];
      $delCat = $time->delByid($Did);
    }
  ?>
  <?php
    if (!isset($_GET['application']) || $_GET['application'] == NULL ) {
        
      }else{
        $applicationId = $_GET['application'];
      }

?> 
  <?php 

    
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        
        
        $addSchedule = $time->CreateSchedule($_POST);
    }
 
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Create Interview Schedule</h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <?php
        if (isset($addSchedule)) {
          echo $addSchedule;
        }
      ?>
      <div class="row">
      <div class="col-md-3">
        <form action="" method="post">
                                 
                                   <div class="form-group">
                                        <label for="pwd">InterView Date:</label>
                                        <input type="date" name="date" class="form-control" id="pwd">
                                  </div>

                                 
                                  

                                  <p><button type="submit" name="submit" class="btn btn-primary">Create Date</button></p>

        </form>
      </div>

      <div class="col-md-9">

        <table class="table">
    <thead>
    
      <tr>
        <th>JobTitle</th>
        <th>Interview Date</th>
        
        <th>Action</th>
        
      </tr>
    </thead>
    <tbody>
    <?php 
        $getTime = $time->getdate();
        if ($getTime) {
          $i = "0";
            while ($value = $getTime->fetch_assoc()) {
            $i++;
    ?>
      <tr class="success">
        <td><?php echo $i;?></td>
        <td><?php echo $value['date'];?></td>
       
        <td><a href="edit_schedule.php?edit=<?php echo $value['id'];?>"><span class="glyphicon glyphicon-pencil"></span></a>&nbsp;||&nbsp;<a onclick="return confirm('Are you Sure Want to Delete!')" href="?delete=<?php echo $value['id'];?>">Delete</a></td>
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