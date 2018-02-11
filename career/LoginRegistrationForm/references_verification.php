<?php include_once "lib/Database.php"; ?>
<?php
	$db = new Database();
?>
<?php
    if (!isset($_GET['phone']) || $_GET['phone'] == NULL ) {
        //echo "<script>window.location = '404.php'</script>";
      }else{
        $user_contact = $_GET['phone'];
      }
?>
<?php

//$user_contact = $_GET['phone'];
$select = "SELECT * FROM tbl_reference WHERE phone = '$user_contact'";
$result = $db->select($select)->fetch_assoc();
$email = $result['email'];
$rName = $result['name'];
$userId = $result['userId'];

$query = "SELECT * FROM tbl_user_reg WHERE regId = '$userId'";
$result = $db->select($query)->fetch_assoc();
$userName = $result['userName'];
$phone = $result['phone'];
$usermail = $result['email'];

$count=0;
	if($count == 0){
		$query = "UPDATE tbl_reference SET stat = '1' WHERE phone = '$user_contact'";
		$result = $db->update($query);
		if ($result) {
		    
		    				?>
                                <script>
                                alert('Confirmed');
                                
                                </script>
                            <?php


							$headers = 'From: '.$usermail."\r\n".
							 
							'Reply-To: '.$usermail."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "recruitment@keal.com.bd";
							$email_subject= "Reference Acceptance";
							$email_message= "
Dear $userName,
Name : $rName
email : $email
phone : $user_contact
has Agreed to be your Reference.
 
Stay connected.
Wish you the Best of Luck!!
                        
Recruitment Office
Kyoto Engineering & Automation Ltd
B2 House 64 Block B Road 3
Niketon Gulshan Dhaka 1212

Emergency Contact Numbers:
01844046621
01844046666
01844046677";


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "Reference Acceptance";
							$email_message1= "
Dear $userName,
Name : $rName
email : $email
phone : $user_contact
has Agreed to be your Reference.
 
Stay connected.
Wish you the Best of Luck!!
                        
Recruitment Office
Kyoto Engineering & Automation Ltd
B2 House 64 Block B Road 3
Niketon Gulshan Dhaka 1212

Emergency Contact Numbers:
01844046621
01844046666
01844046677";
						$email_message2= 'Date'.$date."\r\n";
							mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");
				
		}
		 
	}
	