<?php 
    include '../lib/Session.php' ;
     Session::init();
     include '../lib/Database.php';
     include '../helpers/Format.php';
     include '../classes/attendence.php';
     ?>

     <?php
    $login =Session::get("login");
    if ($login == false) {
      echo "<script>window.location='../login.php'</script>";
    }
  ?>
  <?php 
  $att = new Attendence();
  ?>



<?php 
  $dateTime = date_default_timezone_set('Asia/Dhaka');
  $serverIP = $_SERVER["REMOTE_ADDR"];
  $timestamp = time();
  $date = date("Y-m-d");
  $day = date("(D)");
  $time = date("H:i:s",$timestamp);
  $month = date('M');
?>


<?php
$userId = Session::get('userId');

// if(!isset($_GET['user']) && $_GET['user'] == NULL){
//   echo "<script>window.location = '../index.php'</script>";
// }else{
//   $userId = $_GET['user'];
// }
?>
<?php
  // $getInfo = $att->getapproveip();
  // if ($getInfo) {
  //   while($data = $getInfo->fetch_assoc()){
      
  ?>
    <?php 
      // if ($serverIP !== $data['ip']) {
      //   echo "<script>window.location = '404.php'</script>";
      //}?>
  <?php //} } ?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from webthemez.com/demo/first-educational-free-html5-bootstrap-web-template/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 Jan 2018 07:07:27 GMT -->
<head>
<meta charset="utf-8">
<title>Kyoto Engineering & Automation Ltd.</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />

<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/jcarousel.html" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="js/owl-carousel/owl.carousel.html" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
 
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper" class="home-page">
    <!-- start header -->
    <header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index-2.html"><img src="images/kyoto.png" alt="logo"/ style="width:145px;height:57px"></a>
                </div>
                <div class="navbar-collapse collapse ">

                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index-2.html">Home</a></li> 
                        <li><a href="profile.php">Edit Profile</a></li>
                       <!-- <li><a href="">Events</a></li> -->
                             <li class="nav-item dropdown">
                              <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown">
                                Request For
                              </a>
                              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" style="padding: 5px 15px;" href="lateApproval.php">Late Comming Approval</a>
                                <a class="dropdown-item" style="padding: 5px 15px;" href="errandApproval.php">Errand Approval</a>
                                <a class="dropdown-item" style="padding: 5px 15px;" href="#">Leave Approval</a>
                              </div>
                            </li>
                         <?php
                                if (isset($_GET['action']) && $_GET['action'] == "logout") {
                                    Session::destroy();                               
                                     }
                            ?>
                        <li><a href="?action=logout">Sign Out</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>