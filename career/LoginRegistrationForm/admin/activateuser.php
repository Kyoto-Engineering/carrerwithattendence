<?php include_once "../lib/Database.php"; ?>
<?php
	$db = new Database();
?>
<?php
    if (!isset($_GET['eId']) || $_GET['eId'] == NULL ) {
        //echo "<script>window.location = '404.php'</script>";
      }else{
        $userId = $_GET['eId'];
      }
?>
<?php

//$user_contact = $_GET['phone'];
$select = "SELECT * FROM tbl_user_reg WHERE regId = '$userId'";
$result = $db->select($select);
if ($result) {
	while ($value = $result->fetch_assoc()) {
		$email = $value['email'];
		$rName = $value['userName'];
		$userId = $value['regId'];
	}
}


$count=0;
	if($count == 0){
		$query = "UPDATE tbl_employee SET active = '1' WHERE userId = '$userId'";
		$result = $db->update($query);
		if ($result) {
		    
		    				?>
                                <script>
                                alert('User Activated');
                               
                                </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "recruitment@keal.com.bd";
							$email_subject= "User Activation";
							$email_message= "
Dear rName
With reference to your following request please be informed that you are activated by the HR Department. Now You can use your
attendance system with full feature.

Kyoto Engineering & Automation Ltd
B2 House 64 Block B Road 3
Niketon Gulshan Dhaka 1212";


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "User Activation";
							$email_message1= "
Dear rName
With reference to your following request please be informed that you are activated by the HR Department. Now You can use your
attendance system with full feature.

Kyoto Engineering & Automation Ltd
B2 House 64 Block B Road 3
Niketon Gulshan Dhaka 1212";
						$email_message2= 'Date'.$date."\r\n";
							mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");
				
		}
		 
	}
	