<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
<?php include_once "../Classes/atteninsert.php";?>
<?php
   $atten = new attendenceInsert();
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
      
      <!-- Main row -->

      <?php
    
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
      $attendence = $atten->insertph($_POST);
    }
?>
      <div class="row">
<?php 
    if(isset($attendence)){
      echo $attendence;
    }
?>
<div class="col-md-6" style="background-color: #eee;
width: 30%;
padding: 20px 15px;
margin-left: 10px;">
  <form action="" method="post" style="padding:2px">

    <label for="sel1">Date:</label>
    <input type="date" name="date" class="form-control"><br/>

    <label for="sel1">Reason:</label> 
     <input type="text" name="reason" class="form-control">

<label for="sel1">Day:</label>
    <select class="form-control" name="day">
      <option>---</option>
                                           
        <option value="Satarday" >Satarday</option> 
        <option value="Sunday" >Sunday</option> 
        <option value="Monday" >Monday</option> 
        <option value="Tuesday" >Tuesday</option> 
        <option value="Wednessday" >Wednessday</option> 
        <option value="Thrusday" >Thrusday</option> 
        <option value="Friday" >Friday</option> 
         
                                   
      </select>
       <br/>
<label for="sel1">Type:</label>
    <select class="form-control" name="type">
      <option>---</option>
                                           
        <option value="Mandatory" >Mandatory</option> 
        <option value="Volantory" >Volantory</option> 
                                   
      </select>
       <br/>

     <button type="submit" name="submit" class="btn btn-lg btn-primary">Done</button>
   
</form>
</div>

<div class="col-md-6">
      <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Date</th>
      <th scope="col">Reason</th>
      <th scope="col">Day</th>
      <th scope="col">Type</th>
      
           
    </tr>
  </thead>
  <tbody>

  <?php
  $getInfo = $atten->getphdate();
  if ($getInfo) {
    $i = 0;
    while($data = $getInfo->fetch_assoc()){
      $i++;
  ?>
    <tr>
      <th scope="row"><?php echo $i;?></th>
      <td><?php echo $data['datee'];?></td>
      <td><?php echo $data['reason'];?></td>
      <td><?php echo $data['day'];?></td>
      <td><?php echo $data['type'];?></td>
    </tr>
   <?php } } ?>
  </tbody>
</table>
</div>
      </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 