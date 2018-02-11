<?php 
    include '../lib/Session.php' ;
     Session::init();
     include '../lib/Database.php';
     include '../helpers/Format.php';
     ?>

     <?php
    $login =Session::get("login");
    if ($login == false) {
      echo "<script>window.location='../login.php'</script>";
    }
  ?>
<?php
$userId = Session::get('userId');

// if(!isset($_GET['user']) && $_GET['user'] == NULL){
//   echo "<script>window.location = '../index.php'</script>";
// }else{
//   $userId = $_GET['user'];
// }
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <title>Kyoto Recruitment System</title>
    <link rel="shortcut icon" href="../images/favicon.ico" />
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  
   <link rel="stylesheet" href="dist/css/pagination.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  
<!-- pdf code css link -->
<link rel="STYLESHEET" type="text/css" href="pdf/dhtmlx.css">

<link href="https://fonts.googleapis.com/css?family=Orbitron|Saira+Semi+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet"> 
   
   <!-- pdf js-->
   <script src="pdf/dhtmlx.js"></script> 

   <!--  ckEditor -->
     <script src="//cdn.ckeditor.com/4.5.5/standard/ckeditor.js"></script> 
     
     <script src="js/skill.bars.jquery.js"></script>
    <script type="text/javascript">
tday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

function GetClock(){
var d=new Date();
var nday=d.getDay(),nmonth=d.getMonth(),ndate=d.getDate(),nyear=d.getFullYear();
var nhour=d.getHours(),nmin=d.getMinutes(),nsec=d.getSeconds(),ap;

if(nhour==0){ap=" AM";nhour=12;}
else if(nhour<12){ap=" AM";}
else if(nhour==12){ap=" PM";}
else if(nhour>12){ap=" PM";nhour-=12;}

if(nmin<=9) nmin="0"+nmin;
if(nsec<=9) nsec="0"+nsec;

document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+", "+nyear+" || "+nhour+":"+nmin+":"+nsec+ap+"";
}

window.onload=function(){
GetClock();
setInterval(GetClock,1000);
}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>K.</b>R.</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Kyoto</b>Recruitment</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          
          <!-- Notifications: style can be found in dropdown.less -->
          
          <!-- Tasks: style can be found in dropdown.less -->
          
          <!-- User Account: style can be found in dropdown.less -->
          <!-- <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <?php
                                if (isset($_GET['action']) && $_GET['action'] == "logout") {
                                    Session::destroy();                               
                                     }
                            ?>
                <div class="pull-right">
                  <a href="?action=logout" class="btn btn-default btn-flat">Sign out</a>
                </div>
              <span class="hidden-xs"></span>
            </a>
            

          </li> -->
          <!-- Control Sidebar Toggle Button -->
         
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
     
      <!-- search form -->

      <!-- /.search form -->