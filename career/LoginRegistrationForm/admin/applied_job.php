<?php include_once "inc/header.php";?>
      <?php include_once "../Classes/module.php";?>
      <?php include_once "../Classes/resume.php";?>
<?php include_once "../helpers/Format.php";?>
<?php
 $edu = new Resume();
    $allM = new Module();
    $fm = new Format();
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $userId = $_POST['userId'];
        $jId = $_POST['jId'];
        $info   = $_POST['info'];
        $userjob = $allM->sendProcess($userId, $jId, $info);
    }
?>
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> <center>
        (Step-1) Applied Status
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
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Applicant</td>
        <td>Job Title</td>
        <td>Department</td>
         <td>Batch</td>
        
        <td>Last date<br/> of Application</td>
        <td>Apply Date</td>
         <td>Registration Date</td>
         
         <td>Interview</td>
         
        <td>Action</td>
        <td></td>
        

      </tr>
    </thead>
    <tbody>
    <?php
        //$userId = Session::get("userId");
        $getCandidate = $allM->getCadidateList();
        if ($getCandidate) {
            $i = 0;
            while($value = $getCandidate->fetch_assoc()){
                $i++;

    ?>
      <tr>
          <?php
            $uId = $value['userId'];
            $jId = $value['jId'];
          ?>
        <td><?php echo $i ;?></td>
        <td><a href="applicant_details.php?user=<?php echo urlencode($uId);?>;&amp;jId=<?php echo urlencode($jId);?>"><?php echo $value['userName']?></a></td>
        <td><?php echo $value['jobtitle'];?></td>
        <td><?php echo $value['deptName'];?></td>
         <td><?php echo $value['batch'];?></td>
       
        <td><?php echo $value['lastdApplication'];?></td>
        <td><?php echo $fm->formDate($value['date']);?></td>
        <?php
            $getR = $allM->getRegisDate($uId);
            if($getR){
                while($value = $getR->fetch_assoc()){
        ?>
        <td><?php echo $fm->formDate($value['date']);?></td>
        <?php } } ?>
        
        <?php
        //$userId = Session::get("userId");
        $gette = $allM->getinterdate($uId, $jId);
        if ($gette) {
           
            while($value = $gette->fetch_assoc()){
                

        ?>
        <td><?php echo $fm->Dateformat($value['interviewdate']);?></td>
        <?php } } ?>
      
        
     
        
       
             <td>
       <form action="" method="post">
       <input type="hidden" name="userId" value="<?php echo $uId?>" />
       <input type="hidden" name="jId" value="<?php echo $jId?>"/>
        <input type="hidden" name="info" value="1"/>
      </td>

    <td><input type="submit" name="submit" value="Send Process Note"></td>
         

       </form> 
       <td>
        
   </td>
   
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