<?php include_once "inc/header.php";?>
 <?php include_once "../Classes/schedule.php";?>
  <?php include_once "../Classes/resume.php";?>

      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
 <?php
      $time = new Schedule();
      /*if (isset($_GET['delete'])) {
      $Did = $_GET['delete'];
      $delCat = $edu->delByid($Did);
    }*/
  ?>
  <?php
    if (!isset($_GET['uId']) || $_GET['uId'] == NULL ) {
        
      }else{
        $uId = $_GET['uId'];
      }

?> 
  <?php 

    
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){

        $addSchedule = $time->CreateinterviewSchedule($_POST, $uId);
    }
 
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Give Interview Schedule</h1>
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
                                    <label for="usr">Date</label>
                                    <input type="Date" name="interviewdate" class="form-control" id="usr">
                                  </div>

                                 
                                  <div class="form-group">
                                    <label for="usr">Start Time</label>
                                    <input type="time" name="starttime" class="form-control" id="usr">
                                  </div>
                                  
                                   <div class="form-group">
                                    <label for="usr">End Time</label>
                                    <input type="time" name="endtime" class="form-control" id="usr">
                                  </div>

                                   

                                   <div class="form-group">
                                        <label for="exampleTextarea">Venue:</label>
                                        <textarea class="form-control" name="venue" id="exampleTextarea" rows="3" value="">Kyoto Engineering & Automation Ltd. B2 House 64 Block B Road 3
                                        Niketon Gulshan Dhaka 1212</textarea>
                                  </div>

                                  <p><button type="submit" name="submit" class="btn btn-primary">Create Schedule</button></p>

        </form>
      </div>

      <div class="col-md-4">

        <table class="table">
    <thead>
    
      <tr>
        <th>Sl</th>
        <th>Possible Date</th>
        
        
      </tr>
    </thead>
    <tbody>
    <?php 
        $getTime = $time->getInschedule();
        if ($getTime) {
          $i = '0';
            while ($value = $getTime->fetch_assoc()) {
              $i++;
    ?>
      <tr class="success">
        <td><?php echo $i;?></td>
        <td><?php echo $value['date'];?></td>
        
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