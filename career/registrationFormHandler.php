<?php
include_once 'dbconfig.php';

date_default_timezone_set('Asia/Dhaka');
$timestamp = time();
$date = date("Y-m-d");
$day = date("(D)");
#$time = date("H:i:s",$timestamp);
if(isset($_POST['btn-upload']))
{    
     
$user_name= mysql_real_escape_string($_POST['user_name']);
$user_email= mysql_real_escape_string($_POST['user_email']);
$user_phone= mysql_real_escape_string($_POST['user_phone']);
$dob= mysql_real_escape_string($_POST['dob']);
$specials= mysql_real_escape_string($_POST['specials']);
$hEduLevel= mysql_real_escape_string($_POST['hEduLevel']);


$user_name= trim($user_name);
$user_email= trim($user_email);
$user_phone= trim($user_phone);
$dob= trim($dob);
$specials= trim($specials);
$hEduLevel= trim($hEduLevel);

// email exist or not
	$query = "SELECT user_email FROM tbl_usr_reg WHERE user_email='$user_email'";
	$result = mysql_query($query);
	
	$count = mysql_num_rows($result); // if email not found then register
	if($count == 0)
	{

		$sql="INSERT INTO tbl_usr_reg(user_name,reg_date,user_email,user_phone,dob,specials,hEdulevel) VALUES('$user_name','$date','$user_email','$user_contact','$dob','$specials','$hEdulevels')";
		mysql_query($sql);
		?>
		<script>
		alert('Please check your email for account verification!');
        window.location.href='recruitment_login_register.php?success';
        </script>
		<?php
 if ($count == '0')
 {

$headers = 'From: '.$user_email."\r\n".
 
'Reply-To: '.$user_email."\r\n" .
 
'X-Mailer: PHP/' . phpversion();

 $email_to = "job@keal.com.bd";
$email_subject= "Account Verification";
$email_message= "This person has been registered and sent for email verification:
Name : $user_name
Email : $user_email";


$headers1 = 'From: '.$email_to."\r\n".
 
'Reply-To: '.$email_to."\r\n" .
 
'X-Mailer: PHP/' . phpversion();

$email_subject1= "Account Verification!";
$email_message1= "Dear $user_name,

Please go to the link below to verify your email and complete the registration process

http://career.keal.com.bd/verify_email.php?contact=$user_contact
 
Best Regards,
 
 -Kyoto HRD

 Cell-Phone: +88 04478014883
 
B7 House 64 Road 3 Block B Niketon Gulshan Dhaka - 1212 Bangladesh 
Tel: +88 02 9856203, +88 02 9890687 Fax:+88 02 9885513";

mail("<$email_to>","$email_subject","$email_message","$headers");

mail("<$user_email>","$email_subject1","$email_message1","$headers1");

}
	}



	else
	{
		?>
		<script>
		alert('Error!!!Either the email or password have not been confirmed!');
            window.location.href='registration_ui.php';
        
        </script>
		<?php
	}

}
?>

