<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
 <?php include_once "../Classes/stepclass.php";?>
<?php include_once "../helpers/Format.php";?>
<?php
$fm = new Format();
$allS = new Steps();
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> (STEP-03)Interview Status </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      
      <br/><br/><br/>
      
          
      <!-- /.row -->

      
      <!-- Main row -->
      <div class="row">
<table class="table">
    <thead>
      <tr>
        <th>Sl</th>
        <th>Name</th>
        <th>JobTitle</th>
        
        <th>Department</th>
         <th>Batch</th>
        <th>InterviewDate</th>
        
      </tr>
    </thead>
    <tbody>
    <?php 
      $getcandidate = $allS->getApplicant();
      if ($getcandidate) {
          $i = "0";
        while ($data = $getcandidate->fetch_assoc()) {
            $i++;
    ?>


      <tr>
      <?php
            $uId = $data['userId'];
            $jId = $data['jId'];
          ?>
        <td><?php echo $i;?></td>
        <td><a href="applicant_details.php?user=<?php echo urlencode($uId);?>;&amp;jId=<?php echo urlencode($jId);?>"><?php echo $data['userName']?></a></td>
        <td><?php echo $data['jobtitle']?></td>
        <td><?php echo $data['deptName']?></td>
         <td><?php echo $data['batch']?></td>
        
        
        <?php
        //$userId = Session::get("userId");
        $gette = $allS->getinterdate($uId, $jId);
        if ($gette) {
           
            while($value = $gette->fetch_assoc()){
                

        ?>
        <td><?php echo $fm->Dateformat($value['interviewdate']);?></td>
        <?php } } ?>
        <td><a href="create_schedule.php?uId=<?php echo $uId?>">
            <input type=button name='button' value="Invite"/>
            </a>
        </td>
      </tr>
      <?php } } ?>
    </tbody>
</table>
      </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 