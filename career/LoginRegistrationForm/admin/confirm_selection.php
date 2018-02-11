<?php include "../lib/database.php";?>

<?php
	$db = new Database();
?>

<?php
    if (!isset($_GET['phone']) || $_GET['phone'] == NULL ) {
            echo "<script>window.location = '404.php'</script>";
      }else{
        $user_contact = $_GET['phone'];
      }
?>

<?php


$uquery = "UPDATE step_07 SET selected = '1' WHERE phone = '$user_contact'";
$res = $db->update($uquery);
if ($res) {
	

		?>
			 					<script>
                                alert('How to Complete your Application & Process Note Has Sent');
                                window.location.href='step0.php';
                                </script>
                            <?php
}else{
    
		?>
			 					<script>
                                alert('How to Complete your Application & Process Note Has Sent');
                                window.location.href='step0.php';
                                </script>
                            <?php
}


?>