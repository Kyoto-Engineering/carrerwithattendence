<?php include_once "inc/header.php";?>
 <?php include_once "../Classes/resume.php";?>
 <?php include_once "../helpers/Format.php";?>
 <?php include_once "../Classes/stepclass.php";?>
          <?php
            $edu = new Resume();
            $fm = new Format();
            $allS = new Steps();
          ?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
<?php
    if(isset($_GET['user']) && !empty($_GET['user']) AND isset($_GET['jId']) && !empty($_GET['jId'])){
        $uId = $_GET['user'];
        $jId = $_GET['jId'];
      }

?> 
<?php 

    
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST
      ['submit'])){
        $status = $_POST['status'];
        
        $addcomment = $edu->updateStatus($status, $uId, $jId);
    }
 
?>

<?php
  if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['accept'])) {
    $refstat = $_POST['refstat'];
    $accept = $edu->acceptReference($refstat, $uId);
  }

?>

<?php
  if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['reject'])) {
    $refrej = $_POST['refrej'];
    $accept = $edu->rejectReference($refrej, $uId);
  }

?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Applicant Details & Resume
       
      </h1>
      <h3><?php
      if (isset($addcomment)) {
        echo $addcomment;
      }

      ?></h3>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
          <div class="row">
 
     <?php 
        $getU = $edu->getUser($uId);
        if ($getU) {
          while($value = $getU->fetch_assoc()){


      ?>
        <div class="col-md-5">
          <h5>Name:<?php echo $value['userName'];?></h5>
          <h5>Email:<?php echo $value['email'];?></h5>
          <h5>Phone:<?php echo $value['phone'];?></h5>
          <h5>BirthDate:<?php echo $value['dob'];?></h5>

        </div>

        <div class="col-md-3">
        <?php
          $getsrtlisted=$edu->getshortstat($uId,$jId);
          if ($getsrtlisted) {
           while ($value=$getsrtlisted->fetch_assoc()) {
            

            ?>
           <tr>
           <td><?php if($value['status']=='1'){
              echo "<span style='color:green'>shortlisted</span>";
            }else{
                echo "<span style='color:blue'>Not Listed</span>";
            }
            

            ?></td>
           </tr>
<?php } } ?>
          <br/>
          
        <?php
       $getinterviewdate=$edu->getAll($uId, $jId);
        if ($getinterviewdate) {
         while( $value=$getinterviewdate->fetch_assoc()){
          ?>
        <?php
            if($value['status'] == "3"){
                echo "<span style='color:green'>Interviewed</span>";
            }elseif($value['status'] == "4"){
                echo "<span style='color:red'>Defiant</span>";
            }
        ?>
       

        <?php } } ?>
        <br/>

        
        

 <?php
          $getlist=$edu->getAlllist($uId);
          if ($getlist) {
           while ($value=$getlist->fetch_assoc()) {
            

            ?>

  <?php if($value['listing']=='1'){
              echo "<span style='color:red'>Gray Listed</span> ";
            }
            elseif ($value['listing']=='2') {
             echo "<span style='color:red'>Black Listed</span>";
           }elseif($value['listing']=='3')  {
           
           echo "<span style='color:red'>White Listed</span>";
           }?>
<?php  } }  ?>



<?php
          $getpre=$edu->getpreselect($uId, $jId);
          if ($getpre) {
           while ($value=$getpre->fetch_assoc()) {
            

            ?>

  <?php if($value['preselect']=='1'){
              echo "<span style='color:green'>Pre-Selected</span> ";
            }
            
            if ($value['preselect']=='2') {
             echo "<span style='color:green'>Selected</span>";
           }
           
           if ($value['deselect']=='2') {
             echo "<span style='color:red'>Rejected</span>";
           }
           ?>
<?php  } }  ?>






           <?php 
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
     $addcommit = $edu->addlistingpeople($_POST, $uId);
    }
?>

          </div>
     <?php 
        $getUs = $edu->getUserstep($uId);
        if ($getUs) {
          while($value = $getUs->fetch_assoc()){


      ?>
        <div class="col-md-2">
            <center>
            <?php
                if($value['step'] == "1"){
                    echo "<span style=color:green>Step 0 Applicant</span>";
                }else{
                    
                }
            ?>
        </div></center>
        <?php } } ?> 
        <!--condition for step2-->
        
        
        
        <?php 
        $getUs = $edu->getUsersteptwo($uId);
        if ($getUs) {
          while($value = $getUs->fetch_assoc()){


        ?>
        <div class="col-md-2">
            <center>
            <?php
                if($value['step'] == "1"){
                    echo "<span style=color:green>Step 1 Applicant</span>";
                }else{
                    
                }
            ?>
        </div></center>
        <?php } } ?> 

   
       
        <?php 
            $getPic = $edu->getProfilepic($uId);
            if($getPic){
                while($value = $getPic->fetch_assoc()){
               
        ?>
        
        <div class="col-md-4">
          <img src="../<?php echo $value['image'];?>" alt="image" height="150" width="120px"/>
        </div>
        <?php } } ?>
        
        
        
        <?php } } ?>  
    </div>
          <div class="row">
          <div class="col-md-4">
            <?php
               $getdata = $edu->getdocument($uId);
               if ($getdata) {
                   while ($data = $getdata->fetch_assoc()) {
                 
          ?> 
        
           <a href="../<?php echo $data['resume'] ?>" target="_blank">
             <img src="image/adobe-pdf-icon.png" alt="pdf" height="80px" width="85px">
             <h5 style="margin-left: 20px; margin-top: -3px;">Resume.pdf</h5>
           </a>
        
        <?php } } ?>
          </div>
        </div>
        <p><a href="../classic_resume/index.php?user=<?php echo $uId;?>" target="_blank"><button type="button" class="btn btn-sm btn-primary" >View CV</button></a></p>
      <?php
        $getschool = $edu->getSchoolinfoby($uId);
        if ($getschool) {
            $i = 0;
            while($value = $getschool->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>School Name</td>
        <td>Group</td>
        <td>cgpa</td>
        <td>Passing Year</td>
        <td>Board</td>
      </tr>
    </thead>
    <tbody>
    <h3>Secondary School Information</h3>
    
      <tr>
        <td><?php echo $i ;?></td>
        <td><?php echo $value['name'];?></td>
          <td><?php echo $value['GName'];?></td>
        <td><?php echo $value['cgpa'];?></td>
        <td><?php echo $value['pyear'];?></td>
        <td><?php echo $value['divName'];?></td>
      </tr>
   
    </tbody>
  </table>
      </div>
    <?php } } ?>
      <!-- /.row -->
<!-- /2nd row -->
<?php
        $geto = $edu->getoLevelinfoby($uId);
        if ($geto) {
            $i = 0;
            while($value = $geto->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Institute</td>
        
        <td>cgpa</td>
        <td>Passing Year</td>
        <td>Board</td>
      </tr>
    </thead>
    <tbody>
    <h3>O-level Information</h3>
    
      <tr>
        <td><?php echo $i ;?></td>
        <td><?php echo $value['name'];?></td>
        
        <td><?php echo $value['cgpa'];?></td>
        <td><?php echo $value['pyear'];?></td>
        <td><?php echo $value['divName'];?></td>
      </tr>
   
    </tbody>
  </table>
      </div>
      <?php } } ?>
<!-- /2nd row end-->


      <!-- /3rd row -->
<?php
        $geth = $edu->gethscinfoby($uId);
        if ($geth) {
            $i = 0;
            while($value = $geth->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Institute</td>
        
        <td>cgpa</td>
        <td>Passing Year</td>
        <td>Board</td>
      </tr>
    </thead>
    <tbody>
    <h3>Heigher Secondary (12years) schooling </h3>
    
      <tr>
        <td><?php echo $i ;?></td>
        <td><?php echo $value['name'];?></td>
       
        <td><?php echo $value['cgpa'];?></td>
        <td><?php echo $value['pyear'];?></td>
        <td><?php echo $value['divName'];?></td>
      </tr>
   
    </tbody>
  </table>
      </div>
      <?php } } ?>
<!-- /3rd row end-->

      <!-- /4th row -->
<?php
        $getdip = $edu->getdiplomainfoby($uId);
        if ($getdip) {
            $i = 0;
            while($value = $getdip->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Institute</td>
        
        <td>cgpa</td>
        <td>Passing Year</td>
        <td>Board</td>
      </tr>
    </thead>
    <tbody>
    <h3>Diploma Information</h3>
    
      <tr>
        <td><?php echo $i ;?></td>
        <td><?php echo $value['name'];?></td>
        <td><?php echo $value['degName'];?></td>
         <td><?php echo $value['deptName'];?></td>
        <td><?php echo $value['cgpa'];?></td>
        <td><?php echo $value['pyear'];?></td>
        <td><?php echo $value['divName'];?></td>
      </tr>
   
    </tbody>
  </table>
      </div>
      <?php } } ?>
<!-- /4th row end-->

          <!-- /5th row -->
<?php
        $getver = $edu->getgraduationby($uId);
        if ($getver) {
            $i = 0;
            while($value = $getver->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>University</td>
        <td>Department Of Study</td>
        <td>cgpa</td>
        <td>Passing Year</td>
        
        
      </tr>
    </thead>
    <tbody>
    <h3>Under Graduate Information</h3>
    
      <tr>
        <td><?php echo $i ;?></td>
        <td><?php echo $value['uName'];?></td>
        <td><?php echo $value['studyDept'];?></td>
        
        <td><?php echo $value['cgpa'];?></td>
        <td><?php echo $value['pyear'];?></td>
       
      </tr>
   
    </tbody>
  </table>
      </div>
      <?php } } ?>
<!-- /5th row end-->
<!-- 6th row -->
<?php
        $getver = $edu->getpgraduationby($uId);
        if ($getver) {
            $i = 0;
            while($value = $getver->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>University</td>
        <td>Department Of Study</td>
        <td>cgpa</td>
        <td>Passing Year</td>
        
        
      </tr>
    </thead>
    <tbody>
    <h3>Postgraduate Information</h3>
    
      <tr>
        <td><?php echo $i ;?></td>
        <td><?php echo $value['uName'];?></td>
        <td><?php echo $value['studyDept'];?></td>
        
        <td><?php echo $value['cgpa'];?></td>
        <td><?php echo $value['pyear'];?></td>
       
      </tr>
   
    </tbody>
  </table>
      </div>
      <?php } } ?>
 <!-- /6th row end-->
<!-- 7th row -->
<?php
        $gettr = $edu->gettrainingby($uId);
        if ($gettr) {
            $i = 0;
            while($value = $gettr->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Training Institute</td>
        <td>Training Name</td>
        <td>Training Topic</td>
        <td>Length</td>
        
        
      </tr>
    </thead>
    <tbody>
    <h3>Professional Training Information</h3>
    
      <tr>
        <td><?php echo $i ;?></td>
        <td><?php echo $value['tInstitution'];?></td>
        <td><?php echo $value['trainingName'];?></td>
        
        <td><?php echo $value['tTopic'];?></td>
        <td><?php echo $value['tLenth'];?></td>
        
      </tr>
   
    </tbody>
  </table>
      </div>
      <?php } } ?>
<!-- /7th row end-->

<!-- 8th row -->
<?php
        $gettr = $edu->getuserreferencesBy($uId);
        if ($gettr) {
            $i = 0;
            while($value = $gettr->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
       <table class="table">
    <thead>
      <tr>
        
        <td>Name</td>
        <td>Organization</td>
        <td>Designation</td>
        <td>email</td>
        <td>Phone</td>
        <td>Specialization</td>
        <td>Relation</td>
        <td>District</td>
        <td>Thana</td>
        <td>Post</td>

        
        
      </tr>
    </thead>
    <tbody>
    <h3>References</h3>
    <?php
    if(isset($accept)){
        echo "$accept";
    }
    ?>
      <tr>
        
        <td><?php echo $value['name'];?></td>
        <td><?php echo $value['organization'];?></td>
        <td><?php echo $value['designation'];?></td>
        <td><?php echo $value['email'];?></td>
        <td><?php echo $value['phone'];?></td>
        <td><?php echo $value['specialization'];?></td>
        <td><?php echo $value['relationType'];?></td>
        <td><?php echo $value['distName'];?></td>
        <td><?php echo $value['thName'];?></td>
        <td><?php echo $value['postName'];?></td>
      </tr>
   
    <tr>
    <form action="" method="post">
      <td>
      <input type="hidden" name="refstat" value="1">
      <input type="submit" name="accept" value="Accept"></td>
    </form>
    <form action="" method="post">
      <td>
      <input type="hidden" name="refrej" value="1">
      <input type="submit" name="reject" value="Reject">
      
      </td>
    </form>
    </tr>
    </tbody>
  </table>
      </div>
      <?php } } ?>
<!-- /8th row end-->


      <!-- Main row -->
    <div class="container">
      <div class="row">
      <div class="col-md-6">
     
  
  <form action="" method="post">
   <label>Shortlist This Candidate For Interview</label>
    <br>
                    <input class="w3-radio" type="radio"   name="status" value="1">
                    <label>Yes</label>
                   <!-- &nbsp;
                    <input class="w3-radio" type="radio"   name="status" value="2">
                    <label>Deselect</label>-->
                    
   <p><button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Submit</button></p>
  </form> 

 </div>
 <div class="col-md-6">
    <?php 
       $getid = $edu->getApplicantid($uId);
        if ($getid) {
            
            while($value = $getid->fetch_assoc()){
               
    ?>

   
   <a href="address.php?application=<?php echo $value['userId'];?>" class="btn btn-default add-to-cart">Address Of This Applicant</a>
                        
  
   <?php } } ?>
 </div>
 <br/><br/>
 <?php 
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
     $addcommit = $edu->addlistingpeople($_POST, $uId);
    }
?>

  <div class="col-md-3">
   <h5>
     <span style="color:red";>  Mark People As Gray/Black List </span>
       
      </h5>
      <?php
            if (isset($addcommit)) {
                echo $addcommit;
            }

        ?>
          <!--gray or black listing-->
                          <form action="" method="post">
                             <input class="w3-radio" type="radio"   name="listing" value="1">
                              <label>Gray</label>
                              &nbsp;
                              <input class="w3-radio" type="radio"   name="listing" value="2">
                              <label>Black</label></td>
                              <input class="w3-radio" type="radio"   name="listing" value="3">
                              <label>White-List</label></td>
    

                            <td><input type="submit" name="submit" value="Commit"></td>

                          </form> 
                        
                        <!--gray or black listing end-->
                      
       </div>
       
       <?php
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['deselect'])){
  $uId = $_POST['uId'];
  $jId = $_POST['jId'];
  $deselect = $_POST['destatus'];
 

  $applyHis = $allS->rejectHistory($uId, $jId);
  $delectapp = $allS->deleteapply($uId, $jId);
  $delect = $allS->deletedeselect($uId, $jId);
  $preselect = $allS->removepreselect($uId, $jId);
}
?>
<?php
if (isset($applyHis)) {
  echo $applyHis;

}
?>

          <form action="" method="post">
          <input type="hidden" name="uId" value="<?php echo $uId?>">
          <input type="hidden" name="jId" value="<?php echo $jId;?>">
          <input type="hidden" name="destatus" value="2">
        <input type="submit" name="deselect" value="Reject This Applicant"/> </a>
      </form>
       
      </div>


    </div>      
    
         

    </section>
    <!-- /.content -->
  </div>

  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 