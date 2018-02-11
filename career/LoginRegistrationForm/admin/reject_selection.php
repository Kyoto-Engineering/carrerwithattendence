<?php include_once "../lib/Database.php";?>

<?php
	$db = new Database();
?>

<?php
 
        $user_contact = $_GET['phone'];
     
?>

<?php
 $query = "SELECT * FROM tbl_user_reg WHERE phone = '$user_contact'";
 $result = $db->select($query);
 if($result){
     while($data = $result->fetch_assoc()){
         $email = $data['email'];
         $name = $data['userName'];
         $uId = $data['regId'];
     }
 }
 $Jquery = "SELECT p.*, j.jobtitle FROM step_07 as p, tbl_jobtitle as j WHERE p.jId = j.jId AND p.userId = '$uId'";
        $result = $db->select($Jquery)->fetch_assoc();
        $job = $result['jobtitle'];
 
$uquery = "UPDATE step_07 SET jobstatus = '2' WHERE phone = '$user_contact'";
$res = $db->update($uquery);
if ($res) {
	

		?>
			 					<script>
                                alert('You Disagreed');
                                window.location.href='https://recruitment.keal.com.bd';
                                </script>
                            <?php
                            
                            
							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "recruitment@keal.com.bd";
							$email_subject= "You reject for preselection";
							$email_message= "
Dear $name,
You reject for the folowing position:
Job Title: $job
        ";


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "You reject for preselection";
							$email_message1= "
Dear $name,

You reject for the folowing position:
Job Title: $job
";

							$email_message2= 'Date'.$date."\r\n";
							mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");	


		}else{
		    		?>
			 					<script>
                                alert('How to Complete your Application & Process Note Has Sent');
                                window.location.href='step0.php';
                                </script>
                            <?php

		}



?>