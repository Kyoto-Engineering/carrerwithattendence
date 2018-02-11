<?php 
    include '../lib/Session.php' ;
     Session::init();
     include '../lib/Database.php';
     include '../helpers/Format.php';
     include '../Classes/cvMaker.php';
     
     ?>

<?php
  $cv = new Module();
    $login =Session::get("login");
    if ($login == false) {
      echo "<script>window.location='../login.php'</script>";
    }
  ?>
<?php
if(!isset($_GET['user']) && $_GET['user'] == NULL){
  echo "<script>window.location = '../index.php'</script>";
}else{
  $userId = $_GET['user'];
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Resume Template</title>

	<meta name="viewport" content="width=device-width"/>
	<meta name="description" content="The Curriculum Vitae of Joe Bloggs."/>
	<meta charset="UTF-8"> 

	<link href="css/bootstrap.min.css" rel="stylesheet" >
	<link type="text/css" rel="stylesheet" href="style.css">
	<link href='http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300' rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body id="top">