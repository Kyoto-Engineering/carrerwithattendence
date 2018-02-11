<?php  include 'inc/header.php' ?>

<!-- Header End --> 
<!-- Banner Wrapper Start -->
<div class="banner-wrapper">
  <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel"> 
    <!-- Overlay -->
    <div class="overlay"></div>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <!--<div class="item slides active">-->
      <!--  <div class="slide-1"><img src="images/32.jpg" alt="Recruite Pro"/></div>-->
      <!--  <div class="hero">-->
      <!--    <h1>We offer <span> job vacancies</span> right now!</h1>-->
      <!--    <p>Find your desire one in a minute</p>-->
      <!--  </div>-->
      <!--</div>-->
      <!--<div class="item slides">-->
      <!--  <div class="slide-2"><img src="images/33.jpg" alt="Recruite Pro"/></div>-->
      <!--  <div class="hero">-->
      <!--    <h1>We offer <span> job vacancies </span>right now!</h1>-->
      <!--    <p>Find your desire one in a minute</p>-->
      <!--  </div>-->
      <!--</div>-->
      <div class="item slides active">
        <div class="slide-3"><img src="images/img3.jpg" alt="Recruitement Kyoto"/></div>
        <div class="hero">
          <h1>Build <span> career</span> with us</h1>
          <p>Find your desire one right now</p>
        </div>
      </div>
            <div class="item slides">
        <div class="slide-4"><img src="images/34.jpg" alt="Recruitement Kyoto"/></div>
        <div class="hero">
          <h1>Build <span> career</span> with us</h1>
          <p>Find your desire one right now</p>
        </div>
      </div>
                  <div class="item slides">
        <div class="slide-3"><img src="images/35.jpg" alt="Recruitement Kyoto"/></div>
        <div class="hero">
          <h1>Build <span> career</span> with us</h1>
          <p>Find your desire one right now</p>
        </div>
      </div>
                  <div class="item slides">
        <div class="slide-3"><img src="images/36.jpg" alt="Recruite Kyoto"/></div>
        <div class="hero">
          <h1>Build <span> career</span> with us</h1>
          <p>Find your desire one right now</p>
        </div>
      </div>
    </div>
    <div class="slide-arrows"><a class="left carousel-control" href="#bs-carousel" data-slide="prev"><span class="transition3s glyphicon glyphicon-chevron-left fa fa-angle-left"></span></a> <a class="right carousel-control" href="#bs-carousel" data-slide="next"><span class="transition3s glyphicon glyphicon-chevron-right fa fa-angle-right"></span></a></div>
  </div>
</div>


<!-- Latest jobs Wrapper Start -->
<div class="latest-jobs-wrapper">


  <div class="container">
    <div class="title">
      <h2>Latest <span>Jobs</span></h2>
      <h3>Here you can see</h3>
    </div>
  </div>


  <div class="container">
<?php
  
  $getjob = $job->getJoblist();
  if ($getjob) {
    while ($data = $getjob->fetch_assoc()) {?>
     <?php
            $jId = $data['jId'];
            $vd = $data['ldApplication'];
         ?>
    
    <div class="single-jobs"> <i class="fa fa-briefcase" style="color:#396c9f;"></i>

      <div class="job-heading">
        <h3><?php echo $data['jobtitle']?></h3>
        <p>Department: <?php echo $data['deptName'] ?></p>
      </div>
      <div class="our-location color1"> <span class="fa fa-map-marker" aria-hidden="true"></span>
        <div class="location-content">
          <h3>Niketon, Road-03<p><?php echo $fm->formDate($data['ldApplication'])?></p></h3>
          <?php
                    $date = date('Y-m-d');

                if ($date > $vd){ ?>
                    
                <button type="button" class="btn btn-md btn-danger" name="Disabled" disabled="disabled">Expired</button>
                    <?php }else{ ?>
          <a href="LoginRegistrationForm/login.php"><span>Apply</span></a> <?php } ?></div>
          
      </div>
    </div>
<?php } } ?>


    </div>
 
  </div>



</div>
<!-- Latest jobs Wrapper End --> 



</div>
<!-- Latest jobs Wrapper End --> 
<!-- Video Wrapper Start -->
<!--<div class="video-wrapper">-->
<!--  <div class="container">-->
<!--    <div class="title">-->
<!--      <h2>Watch Our Video</h2>-->
<!--      <h3>Here you can see</h3>-->
<!--    </div>-->
<!--  </div>-->
<!--  <div class="container">-->
<!--    <div class="row">-->
<!--      <div class="col-sm-8 col-sm-offset-2 col-xs-offset-0">-->
<!--        <p> Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. <span> Vestibulum congue posuere lacus, id tincidunt nisi porta sit amet. Suspendisse et sapien varius, </span> pellentesque dui non, semper orci.</p>-->
<!--        <a href="https://www.youtube.com/watch?v=MWjk8asP2e8" class="btn btn-default" data-popup="video"><i class="fa fa-play"></i></a> </div>-->
<!--    </div>-->
<!--  </div>-->
<!--</div>-->

<!-- Testimonials Wrapper Start -->
<!-- <div class="testimonials-wrapper">
  <div class="container">
    <div class="title">
      <h2>Success <span>Stories</span></h2>
      <h3>Here you can see</h3>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
        <!-- Testimonials Indicators -->
        <!-- <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol> -->
        <!-- Testimonials slides -->
        <!-- <div class="carousel-inner" role="listbox">
          <div class="item active">
            <div class="col-md-8 col-sm-12 col-md-offset-2 col-sm-offset-0 col-xs-offset-0">
              <div class="testimonials-main">
                <div class="testimonials-inner"> <i class="fa fa-quote-left"></i>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                  <div class="testimonials-img-main"> </div>
                </div>
                <span class="triangle-down"></span>
                <div class="testimonial-img"> <img src="images/testimonials1.png" alt=""> </div>
                <div class="testimonials-text">
                  <p class="client-name">Client Name</p>
                  <p>Designation</p>
                </div>
              </div>
            </div>
          </div> -->
          <!-- <div class="item">
            <div class="col-md-8 col-sm-12 col-md-offset-2 col-sm-offset-0 col-xs-offset-0">
              <div class="testimonials-main">
                <div class="testimonials-inner"> <i class="fa fa-quote-left"></i>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                  <div class="testimonials-img-main"> </div>
                </div>
                <span class="triangle-down"></span>
                <div class="testimonial-img"> <img src="images/testimonials2.png" alt=""> </div>
                <div class="testimonials-text">
                  <p class="client-name">Client Name</p>
                  <p>Designation</p>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="col-md-8 col-sm-12 col-md-offset-2 col-sm-offset-0 col-xs-offset-0">
              <div class="testimonials-main">
                <div class="testimonials-inner"> <i class="fa fa-quote-left"></i>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                  <div class="testimonials-img-main"> </div>
                </div>
                <span class="triangle-down"></span>
                <div class="testimonial-img"> <img src="images/testimonials3.png" alt=""> </div>
                <div class="testimonials-text">
                  <p class="client-name">Client Name</p>
                  <p>Designation</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div> -->
<!-- </div> -->

<!-- blog Wrapper Start -->
<div class="blog-wrapper">
  <div class="container">
    <div class="title">
      <h2>Which is Your <span style= "color:#396C9F;"">Interest?</span></h2>
      
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <div class="blog-box">
          <div class="blog-img"> <a href="http://it.keal.com.bd/"> <img src="images/1.jpg" alt=""> </a></div>
          <div class="blog-caption">
            <h3><a href="http://it.keal.com.bd/">One Stop IT Solution</a></h3>
            <p>Give your ideas we will make it real!</p>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="blog-box">
          <div class="blog-img"> <a href="http://omron.keal.com.bd/"><img src="images/2.jpg" alt=""></a> </div>
          <div class="blog-caption">
            <h3><a href="http://omron.keal.com.bd/"> OMRON Automation</a></h3>
            <p>Japanees Technology is now in Bangladesh</p>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="blog-box">
          <div class="blog-img"> <a href="http://azbil.keal.com.bd/"><img src="images/3.jpg" alt=""></a> </div>
          <div class="blog-caption">
            <h3><a href="http://azbil.keal.com.bd/">Azbil</a></h3>
            <p>The Next Big Innovation with Japanees Technology</p>
          </div>
        </div>
      </div>

      <div class="col-sm-3">
        <div class="blog-box">
          <div class="blog-img"> <a href="http://www.hvac.keal.com.bd/en/index.html"> <img src="images/4.jpg" alt="">  </a></div>
          <div class="blog-caption">
            <h3><a href="http://www.hvac.keal.com.bd/en/index.html">Kyoto HVAC</a></h3>
            <p>Air Conditioning for Generation after Generation</p>
          </div>
        </div>
      </div>
    
    </div>
  
  </div>
</div>
<!-- blog Wrapper End --> 
<!-- Footer styles Start -->
<?php  include 'inc/footer.php' ?>