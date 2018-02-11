<?php include_once "lib/Database.php"; ?>
<?php include_once "Classes/reglog.php";?>
<?php
	
	$db_handle = new Signup();
	if(!empty($_GET["id"])) {
	$query = "UPDATE tbl_user_reg set status = 'active' WHERE id='" . $_GET["id"]. "'";
	$result = $db_handle->updateQuery($query);
		if(!empty($result)) {
			$message = "Your account is activated.";
		} else {
			$message = "Problem in account activation.";
		}
	}
?>
<html>
<head>
<title>PHP User Registration Form</title>
<link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
<?php if(isset($message)) { ?>
<div class="message"><?php echo $message; ?></div>
<?php } ?>
</body></html>
		