<?php 

     include 'LoginRegistrationForm/lib/Database.php';
     include 'LoginRegistrationForm/helpers/Format.php';
     include 'LoginRegistrationForm/Classes/frontpage.php';
    
      $fm = new Format();
      $job = new Forntlist();

?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from sbtechnosoft.com/recruitepro/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 Jan 2018 03:37:22 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Recruitment Job Portal</title>
<!-- Bootstrap -->
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome CSS-->
<link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- Animate CSS -->
<link href="assets/animate/animate.css" rel="stylesheet">
<!-- Owl Carousel -->
<link href="assets/owl-carousel/css/owl.carousel.css" rel="stylesheet">
<link href="assets/owl-carousel/css/owl.theme.css" rel="stylesheet">
<!-- magnific Css -->
<link href="assets/css/magnific-popup.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="images/logo icon2.png">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- Header Start -->
<header class="wow fadeInDown" data-offset-top="197" data-spy="affix">
  <div class="logo-wrapper"> 
    <!-- Logo -->
    <div class="container">
      <div class="row"> 
        <!-- Logo -->
        <div class="col-sm-12 col-md-3 hidden-xs"> <a href="index.php"><img src="images/kyoto.png" alt="Kyoto" height="auto"  width="120px" /></a> </div>
        <!-- Navigation -->
        <div class="col-sm-12 col-md-9">
          <nav class="navbar navbar-default pull-right"> 
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
              <a class="navbar-brand" href="index.php"><img src="images/kyoto.png" alt="Kyoto" height="auto"  width="120px" /></a> </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"><a href="index.php">Home</a></li>
                <li class="active"><a href="process_note.php">Process Note</a></li>
                <li><a href="current-jobs.php">Current Jobs</a></li>
<!--                 <li class="dropdown"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                  <ul class="dropdown-menu">
                    <li><a href="about-us.php">About Us</a></li>
                    <! <li><a href="faq.html">FAQ</a></li>
                    <li><a href="coming-soon.html">Coming Soon</a></li>
                    <li><a href="404.html">404</a></li> -->
                  <!-- </ul> -->
                <!-- </li> -->
                <!-- <li><a href="services.html">Services</a></li> -->
                <!--<li class="dropdown"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Current Jobs </a>-->
                <!--  <ul class="dropdown-menu">-->
                    
                   <!--  <li><a href="apply-job.html">Apply Job</a></li> -->
                <!--  </ul>-->
                <!--</li>-->
               <!--  <li class="dropdown"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog </a>
                  <ul class="dropdown-menu">
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="blog-details.html">Blog Details</a></li>
                  </ul>
                </li> -->
                <!--<li><a href="#">Contact Us</a></li>-->
              </ul>
            </div>
            <!-- /.navbar-collapse -->
            <div class="user"><img src="images/user-icon.png" alt=""></div>
            <div class="login pull-right hidden-xs"> <a href="LoginRegistrationForm/login.php">Login / Sign Up</a></div>
          </nav>
        </div>
      </div>
    </div>
  </div>
</header>