<?php include_once "lib/Database.php"; ?>
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
$select = "SELECT * FROM employee WHERE userId = '$userId'";
$result = $db->select($select)->fetch_assoc();
$email = $result['email'];
$rName = $result['user'];
$userId = $result['userId'];

 $query  = "SELECT * FROM tbl_attendence WHERE userId = '$userId'";
 $result = $db->select($query)->fetch_assoc();
 $Eplace = $result['errand_place_in'];
 $Eform  = $result['errand_from_in'];
 $Eto  	 = $result['errand_to_in'];
 $eperson = $result['errand_for_in'];

$count=0;
	if($count == 0){
		$query = "UPDATE tbl_attendence SET status = '5' WHERE userId = '$userId'";
		$result = $db->update($query);
		if ($result) {
		    
		    				?>
                                <script>
                                alert('Errand Deny');
                               
                                </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "recruitment@keal.com.bd";
							$email_subject= "Errand Deny";
							$email_message= "
Dear rName
With reference to your following request please be informed that the same has been declined by the HR Department. Please
resubmit the request adequate proof or recommendations from your line manager:
Errand Person: $eperson
Errand Place : $Eplace
Errand From : $Eform
Errand To : $Eto

Kyoto Engineering & Automation Ltd
B2 House 64 Block B Road 3
Niketon Gulshan Dhaka 1212";


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "Errand Deny";
							$email_message1= "
Dear rName
With reference to your following request please be informed that the same has been declined by the HR Department. Please
resubmit the request adequate proof or recommendations from your line manager:
Errand Person: $eperson
Errand Place : $Eplace
Errand From : $Eform
Errand To : $Eto

Kyoto Engineering & Automation Ltd
B2 House 64 Block B Road 3
Niketon Gulshan Dhaka 1212";
						$email_message2= 'Date'.$date."\r\n";
							mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");
				
		}
		 
	}
	