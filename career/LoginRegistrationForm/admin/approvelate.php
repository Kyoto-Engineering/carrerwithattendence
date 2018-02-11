<?php include_once "../lib/Database.php"; ?>
<?php
	$db = new Database();
?>
<?php
    if (!isset($_GET['userId']) || $_GET['userId'] == NULL ) {
        //echo "<script>window.location = '404.php'</script>";
      }else{
        $userId = $_GET['userId'];
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

 $query = "SELECT * FROM tbl_attendence WHERE userId = '$userId'";
 $result = $db->select($query)->fetch_assoc();
 $time = $result['attendence_time'];
 $reason = $result['late_reason'];
 

$count=0;
	if($count == 0){
		$query = "UPDATE tbl_attendence SET hmark = '2' WHERE id = '$userId'";
		$result = $db->update($query);
		if ($result) {
		    
		    				?>
                                <script>
                                alert('Late coming Approval (by HR)');
                               
                                </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "arnab.r@keal.com.bd";
							$email_subject= "Late coming Approval (by HR)";
							$email_message= "
Dear $rName
 
With reference to your following request please be informed that the same has been approved by the HR Department:
Attendence Time = $time
Late Coming Reason = $reason

Thank You

Kyoto Engineering & Automation Ltd
B2 House 64 Block B Road 3
Niketon Gulshan Dhaka 1212";


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "Late coming Approval (by HR)";
							$email_message1= "
Dear $rName
 
With reference to your following request please be informed that the same has been approved by the HR Department:
Attendence Time = $time
Late Coming Reason = $reason

Thank You

Kyoto Engineering & Automation Ltd
B2 House 64 Block B Road 3
Niketon Gulshan Dhaka 1212";
						$email_message2= 'Date'.$date."\r\n";
							mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");
				
		}
		 
	}
	