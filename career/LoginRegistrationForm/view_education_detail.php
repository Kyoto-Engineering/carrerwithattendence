       <?php include_once "inc/header.php";?>
 <?php include_once "Classes/frontResume.php";?>
 <?php include_once "helpers/Format.php";?>
          <?php
            $edu = new FrontResume();
            $fm = new Format();
          ?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 

  <!-- Content Wrapper. Contains page content -->

<?php 

    $uId = Session::get('userId');
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        $status = $_POST['status'];
        
        $addcomment = $edu->updateStatus($status, $uId);
    }
 
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="container">
   
     <div class="row">
     <?php 
        $getdata = $edu->getAlluserdata($uId);
          if ($getdata) {
            while($value = $getdata->fetch_assoc()){
       
     ?>
       <div class="col-md-8">
         <h4>Name:&nbsp;<?php echo $value['userName'];?></h4>
         <p>Email:&nbsp;<?php echo $value['email'];?></p>
         <p>Phone:&nbsp;<?php echo $value['phone'];?></p>
         <p>Birth Date:&nbsp;<?php echo $fm->formDate($value['dob']);?></p>
       </div>
       <div class="col-md-4">
         <div class="img_box">
           <img src="<?php echo $value['image'];?>" alt="image" height="160" width="120px" />
         </div>
       </div>
       <?php } } ?>
     </div>
    

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <?php
        $getschool = $edu->getSchoolinfoby($uId);
        if ($getschool) {
            $i = 0;
            while($value = $getschool->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
          <div class="col-md-12">
              <a href="update_school.php">
                 <span class="glyphicon glyphicon-pencil icon"></span>
              </a>
          </div>
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
        $getv = $edu->getvocationalby($uId);
        if ($getv) {
            $i = 0;
            while($value = $getv->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
          <div class="col-md-12">
              <a href="update_vocational.php">
                 <span class="glyphicon glyphicon-pencil icon"></span>
              </a>
          </div>
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Institute</td>
        <td>Achieved Grade</td>
        <td>Passing Year</td>
        
        <td>Education Board</td>
      </tr>
    </thead>
    <tbody>
    <h3>Vocational Information</h3>
    
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
          <div class="col-md-12">
              <a href="edithsc.php">
                 <span class="glyphicon glyphicon-pencil icon"></span>
              </a>
          </div>
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Institute</td>
        
        <td>gpa</td>
        <td>Passing Year</td>
        <td>Board</td>
      </tr>
    </thead>
    <tbody>
    <h3>HSC Information</h3>
    
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
          <div class="col-md-12">
              <a href="update_diploma.php">
                 <span class="glyphicon glyphicon-pencil icon"></span>
              </a>
          </div>
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Institute</td>
         <td>Name of Degree</td>
        
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
          <div class="col-md-12">
              <a href="update_undergraduate.php">
                 <span class="glyphicon glyphicon-pencil icon"></span>
              </a>
          </div>
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
          
          <div class="col-md-12">
              <a href="update_postgraduate.php">
                 <span class="glyphicon glyphicon-pencil icon"></span>
              </a>
          </div>
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
        $getver = $edu->getotheruniversityby($uId);
        if ($getver) {
            $i = 0;
            while($value = $getver->fetch_assoc()){
                $i++;

    ?>
      <div class="row">
          
          <div class="col-md-12">
              <a href="#">
                 <span class="glyphicon glyphicon-pencil icon"></span>
              </a>
          </div>
       <table class="table">
    <thead>
      <tr>
        <td>SL</td>
        <td>Education Type</td>
        <td>University</td>
        <td>Department Of Study</td>
        <td>cgpa</td>
        <td>Passing Year</td>
        
        
      </tr>
    </thead>
    <tbody>
    <h3>University Education</h3>
    
      <tr>
        <td><?php echo $i ;?></td>
        <td><?php echo $value['edutype'];?></td>
        <td><?php echo $value['name'];?></td>
        <td><?php echo $value['studyDept'];?></td>
        
        <td><?php echo $value['cgpa'];?></td>
        <td><?php echo $value['pyear'];?></td>
       
      </tr>
   
    </tbody>
  </table>
      </div>
      <?php } } ?>

<!-- /7th row end-->
      <!-- Main row -->
     
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 