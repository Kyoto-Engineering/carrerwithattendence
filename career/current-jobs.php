<?php  include 'inc/header.php' ?>
<!-- Header End --> 
<!-- breadcrumb Wrapper Start -->
<div class="breadcrumb-wrapper">
  <div class="container">
    <div class="banner-title">
      <h2>Current Jobs</h2>
      <div class="line"> <span></span></div>
    </div>
    <ul class="inner-breadcrumb">
      <li><a href="index.php">Home</a></li>
      <!--<li>Pages</li>-->
      <li>Current Jobs</li>
    </ul>
  </div>
</div>
<!-- breadcrumb Wrapper End --> 
<!-- Inner page Wrapper Start -->
<div class="inner-page-wrapper latest-jobs-wrapper">
  <div class="container">
  <?php
  
  $getjob = $job->getAllJoblist();
  if ($getjob) {
    while ($data = $getjob->fetch_assoc()) {?>
     <?php
            $jId = $data['jId'];
            $vd = $data['ldApplication'];
         ?>
    <div class="single-jobs">  <i class="fa fa-briefcase" style="color:#fff;"></i>
      <div class="job-heading">
         <h3><?php echo $data['jobtitle']?></h3>
        <p>Department: <?php echo $data['deptName'] ?></p>
      </div>
      <div class="our-location color1"> <span class="fa fa-calendar" aria-hidden="true"></span>
        <div class="location-content">
          <h3><?php echo $fm->formDate($data['ldApplication'])?></h3>
          <?php
                    $date = date('Y-m-d');

                if ($date > $vd){ ?>
                    
                <button type="button" class="btn btn-md btn-danger" name="Disabled" disabled="disabled">Expired</button>
                    <?php }else{ ?>
          <a href="LoginRegistrationForm/login.php">Apply Now</a><?php } ?> </div>
      </div>
       
    </div>
   <?php } } ?>
    </div>
  

    <ul class="pagination">
      <li><a href="#"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
      <li><a href="#">1</a></li>
      <li class="active"><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
    </ul>
  </div>
</div>
<!-- Inner page Wrapper End --> 
<!-- Footer styles Start -->
<?php  include 'inc/footer.php' ?>