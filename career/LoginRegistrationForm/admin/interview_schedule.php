<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
  <?php include_once "../Classes/schedule.php";?>
  <?php include_once "../helpers/Format.php";?>
 
<?php 
  $time = new Schedule();
    $fm = new Format();
?>
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
      <div class="col-md-8">
        <table class="table">
    <thead>
      <tr>
        <th>Sl</th>
        <th>Firstname</th>
        <th>Action</th>
        <th>Interview Date</th>
        <th>Attendence</th>
        
        

       
        
      </tr>
    </thead>
    <tbody>
          <?php 
            $getApplicant = $time->getApplicantBy();
            if ($getApplicant) {
              $i ="0";
              while ($value = $getApplicant->fetch_assoc()) {
                          $i++;
          ?>
      <tr class="success">
       <?php 
        $uId = $value['userId'];
        $jId = $value['jId'];
       ?>
        <td><?php echo $i;?></td>
        <td><?php echo $value['userName'];?></td>
       <td><a href="create_schedule.php?uId=<?php echo $value['userId']?>"><input type="button" name="button" value="Assign Schedule"></a></td>
        <?php
            $getdat = $time->getInterview($uId, $jId);
            if($getdat){
                while($value = $getdat->fetch_assoc()){
            
        ?>
        
        <td><?php echo $fm->formDate($value['interviewdate']);?></td>
        <td><?php
            if($value['status'] == "3"){
             echo "<span style='color:blue'>Present</span>";  
            }elseif($value['status'] == "4"){
                
                echo "<span style='color:red'>Absent</span>";
                }else{
                $date= date('Y-m-d');
                if ($value['interviewdate']>$date) {
                  echo "<span style='color:green'>Upcoming</span>";
                }else{
                  echo "<span style='color:red'>Session_Out</span>";
                }
            }
         ?></td>
        <?php } } ?>

        
       
      
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