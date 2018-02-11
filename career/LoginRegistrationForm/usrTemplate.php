<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 
  $add = new Address();
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $insertAdd = $add->addressInsert($_POST);
    }
 
?>

























<?php include_once "inc/footer.php";?>