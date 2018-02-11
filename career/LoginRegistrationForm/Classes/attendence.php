<?php include_once "../lib/Database.php"; ?>
<?php include_once "../helpers/Format.php"; ?>
<?php include_once "../lib/Session.php"; ?>

<?php
	/**
	* 
	*/
	class Attendence
	{
		private $db;
		private $fm;

		public function __construct()
	
		{
			$this->db = new Database();
			$this->fm = new Format();
		}	

		public function markAttendence($data,  $userId, $serverIP, $date, $day, $time, $month){


			
			$late_reason 	= $this->fm->validation($data['late_reason']);
			$original_time  = $this->fm->validation($data['original_time']);
			$errand_place_in = $this->fm->validation($data['errand_place_in']);
			$errand_for_in = $this->fm->validation($data['errand_for_in']);
			$errand_from_in = $this->fm->validation($data['errand_from_in']);
			$errand_to_in = $this->fm->validation($data['errand_to_in']);

			$late_reason = mysqli_real_escape_string($this->db->link, $late_reason);
			$original_time = mysqli_real_escape_string($this->db->link, $original_time);
			$errand_place_in = mysqli_real_escape_string($this->db->link, $errand_place_in);
			$errand_for_in = mysqli_real_escape_string($this->db->link, $errand_for_in);
			$errand_from_in = mysqli_real_escape_string($this->db->link, $errand_from_in);
			$errand_to_in = mysqli_real_escape_string($this->db->link, $errand_to_in);
			
		$squery = "SELECT * FROM tbl_employee WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			while ($res = $getData->fetch_assoc()) {
				$name = $res['user'];
				$id =$res['id'];
			}
		}

		$query = "SELECT p.*, e.userName FROM tbl_attendence as p, tbl_user_reg as e WHERE  p.userId = e.regId AND attendence_date = '$date' ORDER BY p.id DESC";
      	  $result = $this->db->select($query);
      	  if ($result) {
      	  	while($sort = $result->fetch_assoc()){
      	  		$user = $sort['userName'];
      	  		$eId  = $sort['eId'];
      	  	}
      	  }

		$squery = "SELECT * FROM tbl_attendence WHERE userId = '$userId' AND attendence_date = '$date'";
		$getData = $this->db->select($squery);
		if ($getData) {
			?>
			<script>var my_time = new Date(); alert('You are already checkd in...'+my_time);
                        window.location = 'dailyAttendance.php';
                        </script>
			<?php
		}else{
			$query = "INSERT INTO tbl_attendence(userId, eId, late_reason, original_time, errand_place_in, errand_for_in, errand_from_in, errand_to_in, attendence_time, day, attendence_date, month, inip, status, name) VALUES('$userId', '$id','$late_reason', '$original_time', '$errand_place_in', '$errand_for_in', '$errand_from_in', '$errand_to_in', '$time', '$day', '$date', '$month', '$serverIP', '1', '$name')";
			$res = $this->db->insert($query);
			if ($res) {
			
			
			        ini_set( 'display_errors', 1 );
			        error_reporting( E_ALL );
			        $from = "career.keal.com.bd";
			        $to = "arnab.r@keal.com.bd";
			        $subject = "Dailly Attendence";
			        $message = "
			        Employee Id = $eId $user $userId
			        Date = $date
			        Day  = $day
					Late_reason = $late_reason
					Original_time = $original_time
					Errand_place_in = $errand_place_in
					Errand_for_in = $errand_for_in
					Errand_from_in = $errand_from_in
					Errand_to_in = $errand_to_in
					ServerIP = $serverIP
			        Checked In
			        ";
			        $headers = "From:" . $from;
			        mail($to,$subject,$message, $headers);
			        ?>
				<script>var my_time = new Date(); alert('Attendance Taken at '+my_time);
                        window.location = 'dailyAttendance.php';
                        </script>
			<?php
  			
			}else{
				$msg = "Attendence Not Marked";
				return $msg;
			}
		}

	}

		public function getUseratten($userId){
			$query = "SELECT * FROM tbl_attendence WHERE userId = '$userId' ORDER BY id DESC LIMIT 7";
			$res = $this->db->select($query);
			return $res;
		}



		public function markOutAttendence($data, $userId, $serverIPout, $date, $day, $time, $month){
			$query = "SELECT * FROM tbl_attendence WHERE userId = '$userId' AND attendence_date = '$date'";
			$res = $this->db->select($query);
			if (!$res) {
			?>
			<script>var my_time = new Date(); alert('You are not check In today... '+my_time);
                        window.location = 'dailyAttendance.php';
                        </script>
			<?php
			}




			$early_leave  = $this->fm->validation($data['early_leave']);
			$ongoing_works  = $this->fm->validation($data['ongoing_works']);
			$incase_errand_place = $this->fm->validation($data['incase_errand_place']);

			$errand_from_out = $this->fm->validation($data['errand_from_out']);
			$errand_to_out = $this->fm->validation($data['errand_to_out']);

			$early_leave = mysqli_real_escape_string($this->db->link, $early_leave);
			$ongoing_works = mysqli_real_escape_string($this->db->link, $ongoing_works);
			$incase_errand_place = mysqli_real_escape_string($this->db->link, $incase_errand_place);
			
			$errand_from_out = mysqli_real_escape_string($this->db->link, $errand_from_out);
			$errand_to_out = mysqli_real_escape_string($this->db->link, $errand_to_out);



			$restrict = "SELECT * FROM tbl_attendence WHERE outdate = '$date' AND userId = '$userId'";
			$result = $this->db->select($restrict);
			if ($result) {
				?>
			<script>var my_time = new Date(); alert('Checked Out at '+my_time);
                        window.location = 'dailyAttendance.php';
                        </script>
			<?php
			}else{
			$query = "UPDATE tbl_attendence 
			SET
			early_leave = '$early_leave',
			ongoing_works = '$ongoing_works',
			incase_errand_place = '$incase_errand_place',
			
			errand_from_out = '$errand_from_out',
			errand_to_out = '$errand_to_out',
			outtime = '$time',
			outday = '$day',
			outmonth = '$month',
			outdate = '$date',
			ipout = '$serverIPout'

			WHERE userId = '$userId' AND attendence_date = '$date'";
			$res = $this->db->update($query);
			if ($res) {
							?>
			<script>var my_time = new Date(); alert('Checked Out at '+my_time);
                        window.location = 'dailyAttendance.php';
                        </script>
			<?php
			}else{
				$msg = "Attendence Not Marked";
				return $msg;
			}
		}
		
}

		public function getUseroutatten($userId){
			$query = "SELECT outdate, outmonth, outday, outtime FROM tbl_attendence WHERE userId = '$userId' ORDER BY id DESC LIMIT 7";
			$res = $this->db->select($query);
			return $res;
		}

		public function getUserBy($userId){
			$query = "SELECT * FROM tbl_employee WHERE userId = '$userId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getregUserBy($userId){
			$query = "SELECT * FROM tbl_user_reg WHERE regId = '$userId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function userProfile($data, $userId){
			$user = $this->fm->validation($data['user']);
			$job_title = $this->fm->validation($data['job_title']);
			$designation = $this->fm->validation($data['designation']);
			$office_contact = $this->fm->validation($data['office_contact']);
			$optional_email = $this->fm->validation($data['optional_email']);

			$user = mysqli_real_escape_string($this->db->link, $user);
			$job_title = mysqli_real_escape_string($this->db->link, $job_title);
			$designation = mysqli_real_escape_string($this->db->link, $designation);
			$office_contact = mysqli_real_escape_string($this->db->link, $office_contact);
			$optional_email = mysqli_real_escape_string($this->db->link, $optional_email);

			$Mquery = "SELECT * FROM tbl_user_reg WHERE regId = '$userId'";
			$result = $this->db->select($Mquery);
			if ($result) {
				while ($data = $result->fetch_assoc()) {
					$email = $data['email'];
					$userName = $data['userName'];
				}
			}

			if ($user == "" || $job_title == "" || $designation == "" || $office_contact == "") {
				$msg = "Field Must Not Be Empty!!";
				return $msg;
			}else{
				$query = "INSERT INTO tbl_employee(userId, user, job_title, designation, office_contact, optional_email, employeestat defultIntime, defultOuttime) VALUES('$userId', '$user', '$job_title', '$designation', '$office_contact', '$optional_email', 
					'1', '09:00 AM', '05:00 PM')";
				$insert_row = $this->db->insert($query);
				if ($insert_row) {
						
												?>
                                <script>
                                alert('Please wait untill HR Approve You');
                                window.location.href='index.php';
                                </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "recruitment@keal.com.bd";
							$email_subject= "Request for HR approval";
							$email_message= "
Dear $userName,
Your Profile has been created please wait for HR approval. After HR approval you will get attendance panel.
								 
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

							$email_subject1= "Request for HR approval";
							$email_message1= "
Dear $userName,
https://career.keal.com.bd/LoginRegistrationForm/admin/activateuser.php?eId=$userId
								 
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
						
				}else{
					$msg = "<span style='color:red;'>Your Profile Not created Successfully</span>";
					return $msg;
				}
			}


		}

	public function getemployeeId($date){
		 //$date = date('Y-m-d');
      	 $query = "SELECT p.*, r.userName FROM tbl_attendence as p, tbl_user_reg as r WHERE  p.userId = r.regId AND attendence_date = '$date' ORDER BY p.id DESC";
      	  $result = $this->db->select($query);
           return $result;

           /*$query = "SELECT p.*, r.userName, j.jobtitle  FROM tbl_interview as p, tbl_user_reg as r, tbl_jobtitle as j, tbl_department as s WHERE p.userId = r.regId AND p.jId = j.jId  ORDER BY p.id DESC";
           $query = "SELECT * FROM tbl_interview  ORDER BY id DESC";
           $result = $this->db->select($query);
           return $result;*/
	}

	public function getdateby($date){
		$query = "SELECT attendence_date, day FROM tbl_attendence WHERE attendence_date = '$date' LIMIT 1";
		$result = $this->db->select($query);
		return $result;
	}

	public function getemployee($uId){
		$query = "SELECT * FROM tbl_employee WHERE userId = '$uId'";
		$res = $this->db->select($query);
		return $res;
	}

	public function getDefultTime($userId){
		$query = "SELECT * FROM tbl_employee WHERE userId = '$userId'";
		$res = $this->db->select($query);
		return $res;
	}

	public function getAllemployee(){
		  $query = "SELECT p.*, r.userName FROM tbl_employee as p, tbl_user_reg as r WHERE  p.userId = r.regId ORDER BY p.id DESC";
      	  $result = $this->db->select($query);
           return $result;
	}

	//05-02-18

	// late coming start
	public function lateApproval($data, $userId, $serverIP, $date, $day, $time, $month){
		$late_reason 	= $this->fm->validation($data['late_reason']);
		$original_time  = $this->fm->validation($data['original_time']);
		$late_reason 	= mysqli_real_escape_string($this->db->link, $late_reason);
		$original_time  = mysqli_real_escape_string($this->db->link, $original_time);

		if ($late_reason == "") {
			$msg = "<span style='color:red;'>Please Select Your Reason For Being Late!!</span>";
			return $msg;
		}

		$squery = "SELECT * FROM tbl_employee WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			while ($res = $getData->fetch_assoc()) {
				$name = $res['user'];
				$id =$res['id'];
			}
		}

		$query = "SELECT p.*, e.userName FROM tbl_attendence as p, tbl_user_reg as e WHERE  p.userId = e.regId AND attendence_date = '$date' ORDER BY p.id DESC";
      	  $result = $this->db->select($query);
      	  if ($result) {
      	  	while($sort = $result->fetch_assoc()){
      	  		$user = $sort['userName'];
      	  		$eId  = $sort['eId'];
      	  	}
      	  }

		$squery = "SELECT * FROM tbl_attendence WHERE userId = '$userId' AND attendence_date = '$date'";
		$getData = $this->db->select($squery);
		if ($getData) {
			?>
			<script>var my_time = new Date(); alert('You are already Requested For Late Approval...'+my_time);
                        window.location = 'dailyAttendance.php';
                        </script>
			<?php
		}else{
			$query = "INSERT INTO tbl_attendence(userId, late_reason, original_time, attendence_time, day, attendence_date, month, inip, name) VALUES('$userId', '$late_reason', '$original_time',  '$time', '$day', '$date', '$month', '$serverIP', '$name')";
			$res = $this->db->insert($query);
			if ($res) {
				$msg = "Attendence Marked";
				return $msg;
			}else{
				$msg = "Attendence Not Marked";
				return $msg;
			}
		
		}
	}

	public function lateApprovalrequest($data, $userId, $serverIP, $date, $day, $time, $month){
		$late_reason 	= $this->fm->validation($data['late_reason']);
		$original_time  = $this->fm->validation($data['original_time']);

		$late_reason 	= mysqli_real_escape_string($this->db->link, $late_reason);
		$original_time  = mysqli_real_escape_string($this->db->link, $original_time);

		if ($late_reason == "") {
			$msg = "<span style='color:red;'>Please Select Your Reason For Being Late!!</span>";
			return $msg;
		}		

		$squery = "SELECT * FROM tbl_employee WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			while ($res = $getData->fetch_assoc()) {
				$name = $res['user'];
				$id =$res['id'];
			}
		}

		$squery = "SELECT * FROM tbl_latecoming";
		$getData = $this->db->select($squery);
		if ($getData) {
			while ($res = $getData->fetch_assoc()) {
				$id =$res['id'];
			}
		}

		$Mquery = "SELECT * FROM tbl_user_reg WHERE regId = '$userId'";
		$result = $this->db->select($Mquery);
		if ($getData) {
			while ($value = $getData->fetch_assoc()) {
			$email = $result['email'];
			$userName = $result['userName'];
			}
		}

		$squery = "SELECT * FROM tbl_attendence WHERE userId = '$userId' AND attendence_date = '$date'";
		$getData = $this->db->select($squery);
		if ($getData) {
			?>
			<script>var my_time = new Date(); alert('You are already Requested For Late Approval...'+my_time);
                        window.location = 'dailyAttendance.php';
            </script>
			<?php
		}else{
			$query = "INSERT INTO tbl_latecoming(userId, late_reason, original_time, attendence_time, day, datee, month, inip, name) VALUES('$userId', '$late_reason', '$original_time',  '$time', '$day', '$date', '$month', '$serverIP', '$name')";
			$res = $this->db->insert($query);
			if ($res) {
							
			 						?>
			 					<script>var my_time = new Date(); alert('Late Approval Request Submit '+my_time);
                        		window.location = 'dailyAttendance.php';
                      			  </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "arnab.r@keal.com.bd";
							$email_subject= "Dailly Attendence $date";
							$email_message= "
Dear $userName,
Employee Id = $eId $user $userId
Date = $date
Day  = $day
Late_reason = $late_reason
ServerIP = $serverIP
Checked In

Click this link for Approve Late Comming...

https://career.keal.com.bd/LoginRegistrationForm/admin/approvelate.php?userId=$id

Click this link for Deny Late Comming...

https://career.keal.com.bd/LoginRegistrationForm/admin/denylate.php?userId=$id
";


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "How to Complete your Application & Process Note";
							$email_message1= "
Dear $userName,
Employee Id = $eId $user $userId
Date = $date
Day  = $day
Late_reason = $late_reason
ServerIP = $serverIP
Checked In

Click this link for Approve Late Comming...

https://career.keal.com.bd/LoginRegistrationForm/admin/approvelate.php?userId=$id

Click this link for Deny Late Comming...

https://career.keal.com.bd/LoginRegistrationForm/admin/denylate.php?userId=$id";

							$email_message2= 'Date'.$date."\r\n";
							mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");	
  			
			}else{
				$msg = "Attendence Not Marked";
				return $msg;
			}
		
		}

	}

// late approval end



// errand approval start
public function errandAttend($data, $userId, $serverIP, $date, $day, $time, $month){
		$late_reason 	= $this->fm->validation($data['late_reason']);
		$original_time  = $this->fm->validation($data['original_time']);
		$late_reason 	= mysqli_real_escape_string($this->db->link, $late_reason);
		$original_time  = mysqli_real_escape_string($this->db->link, $original_time);

		if ($late_reason == "") {
			$msg = "<span style='color:red;'>Please Select Your Reason For Being Late!!</span>";
			return $msg;
		}

		$squery = "SELECT * FROM tbl_employee WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			while ($res = $getData->fetch_assoc()) {
				$name = $res['user'];
				$id =$res['id'];
			}
		}

		$query = "SELECT p.*, e.userName FROM tbl_attendence as p, tbl_user_reg as e WHERE  p.userId = e.regId AND attendence_date = '$date' ORDER BY p.id DESC";
      	  $result = $this->db->select($query);
      	  if ($result) {
      	  	while($sort = $result->fetch_assoc()){
      	  		$user = $sort['userName'];
      	  		$eId  = $sort['eId'];
      	  	}
      	  }

		$squery = "SELECT * FROM tbl_attendence WHERE userId = '$userId' AND attendence_date = '$date'";
		$getData = $this->db->select($squery);
		if ($getData) {
			?>
			<script>var my_time = new Date(); alert('You are already Requested For Late Approval...'+my_time);
                        window.location = 'dailyAttendance.php';
                        </script>
			<?php
		}else{
					$query = "INSERT INTO tbl_attendence(userId, eId, errand_place_in, errand_for_in, errand_from_in, errand_to_in, attendence_time, day, attendence_date, month, inip, status, name) VALUES('$userId', '$id', '$errand_place_in', '$errand_for_in', '$errand_from_in', '$errand_to_in', '$time', '$day', '$date', '$month', '$serverIP', '1', '$name')";
			$res = $this->db->insert($query);
			if ($res) {
				$msg = "Attendence Marked";
				return $msg;
			}else{
				$msg = "Attendence Not Marked";
				return $msg;
			}
		
		}
}



	public function errandAttendence($data, $userId, $serverIP, $date, $day, $time, $month){
			$errand_place_in = $this->fm->validation($data['errand_place_in']);
			$errand_for_in   = $this->fm->validation($data['errand_for_in']);
			$errand_from_in  = $this->fm->validation($data['errand_from_in']);
			$errand_to_in    = $this->fm->validation($data['errand_to_in']);

			$errand_place_in = mysqli_real_escape_string($this->db->link, $errand_place_in);
			$errand_for_in   = mysqli_real_escape_string($this->db->link, $errand_for_in);
			$errand_from_in  = mysqli_real_escape_string($this->db->link, $errand_from_in);
			$errand_to_in    = mysqli_real_escape_string($this->db->link, $errand_to_in);
			

			$squery = "SELECT * FROM tbl_errand WHERE userId = '$userId'";
			$getData = $this->db->select($squery);
			if ($getData) {
				while ($res = $getData->fetch_assoc()) {
					$name = $res['user'];
					$id =$res['id'];
				}
			}

			$squery = "SELECT * FROM tbl_errand";
			$getData = $this->db->select($squery);
			if ($getData) {
				while ($res = $getData->fetch_assoc()) {
					$name = $res['user'];
					$eid =$res['id'];
				}
			}

			$query = "SELECT p.*, e.userName FROM tbl_attendence as p, tbl_user_reg as e WHERE  p.userId = e.regId AND attendence_date = '$date' ORDER BY p.id DESC";
	      	  $result = $this->db->select($query);
	      	  if ($result) {
	      	  	while($sort = $result->fetch_assoc()){
	      	  		$user = $sort['userName'];
	      	  		$eId  = $sort['eId'];
	      	  	}
	      	  }


			if ($errand_place_in == "") {
				$msg = "<span style='color:red;'>Please Enter Your Errand Place!!</span>";
				return $msg;
			}elseif ($errand_for_in == "") {
				$msg = "<span style='color:red;'>Please Enter Errand For Whoom!!</span>";
				return $msg;			
			}elseif ($errand_from_in == "") {
				$msg = "<span style='color:red;'>Please Enter Errand Form...(Time)!!</span>";
				return $msg;	
			}elseif ($errand_to_in == "") {
				$msg = "<span style='color:red;'>Please Enter Errand To...(Time)!!</span>";
				return $msg;	
			}else{
							$query = "INSERT INTO tbl_errand(userId, errand_place_in, errand_for_in, errand_from_in, errand_to_in, attendence_time, day, attendence_date,  inip, status) VALUES('$userId', '$errand_place_in', '$errand_for_in', '$errand_from_in', '$errand_to_in', '$time', '$day', '$date', '$serverIP', '1')";
			$res = $this->db->insert($query);
			if ($res) {
							
			 						?>
			 					<script>var my_time = new Date(); alert('Late Approval Request Submit '+my_time);
                        		window.location = 'dailyAttendance.php';
                      			  </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "arnab.r@keal.com.bd";
							$email_subject= "Dailly Attendence $date";
							$email_message= "
Dear $userName,
Employee Id = $eId $user $userId
Date = $date
Day  = $day
Late_reason = $late_reason
ServerIP = $serverIP
Checked In

Click this link for Approve Late Comming...

https://career.keal.com.bd/LoginRegistrationForm/admin/approvelate.php?userId=$eid

Click this link for Deny Late Comming...

https://career.keal.com.bd/LoginRegistrationForm/admin/denylate.php?userId=$eid
";


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "How to Complete your Application & Process Note";
							$email_message1= "
Dear $userName,
Employee Id = $eId $user $userId
Date = $date
Day  = $day
Late_reason = $late_reason
ServerIP = $serverIP
Checked In

Click this link for Approve Late Comming...

https://career.keal.com.bd/LoginRegistrationForm/admin/approveerrand.php?userId=$eid

Click this link for Deny Late Comming...

https://career.keal.com.bd/LoginRegistrationForm/admin/denyerrand.php?userId=$eid";

							$email_message2= 'Date'.$date."\r\n";
							mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");	
  			

			}else{
				$msg = "Attendence Not Marked";
				return $msg;
			}
		}
	}
//errand end

	//06-02-18
	public function getEmployeDetails($uId){
		$query = "SELECT p.*, e.userName FROM employee as p, tbl_user_reg as e WHERE  p.userId = e.regId ORDER BY p.id DESC";
	      	  $result = $this->db->select($query);
		return $result;
	}

	public function getEmployetime($uId){
		$query = "SELECT * FROM tbl_employee WHERE userId ='$uId'";
		$res = $this->db->select($query);
		return $res;
	}

	public function CreateofficeSchedule($data, $uId){
		$inTime = $this->fm->validation($data['defultInTime']);
		$outTime = $this->fm->validation($data['defultOuttime']);

		if($inTime == "" || $outTime == ""){
			$msg = "<span style='color:red';>Please Give Both IN & OUT Time</span>";
			return $msg;
		}else{
			$query = "UPDATE tbl_employee SET
			defultInTime = '$inTime',
			defultOuttime = '$outTime'
			WHERE userId = '$uId'";
			$update_row = $this->db->update($query);
			if ($update_row) {
			$msg = "<span style='color:green';>In Time & Out Time has been Set</span>";
			return $msg;
			}else{
			$msg = "<span style='color:green';>In Time & Out Time has been not Set</span>";
			return $msg;
			}
		}
	}

	public function saveEmployeeId($data, $uId){
		$eId = $this->fm->validation($data['eId']);
		$eId = mysqli_real_escape_string($this->db->link, $eId);

		$query = "INSERT INTO tbl_employee(eId) VALUES('$eId')";
		$res = $this->db->insert($query);
		if ($res) {
			$msg = "<span style='color:green';>Employee ID saved permanently</span>";
			return $msg;
		}else{
			$msg = "<span style='color:green';>Employee ID dont saved permanently</span>";
			return $msg;
		}
	}

	public function getUserdefultTime($userId){
		$query = "SELECT * FROM tbl_employee WHERE userId = '$userId'";
		$res = $this->db->select($query);
		return $res;
	}



	public function getapproveip(){
		$query = "SELECT * FROM tbl_approveip";
		$res = $this->db->select($query);
		return $res;
	}

	public function getactivation($userId){
		$query = "SELECT * FROM tbl_employee WHERE userId = '$userId'";
		$res = $this->db->select($query);
		return $res;
	}

		public function getlateemployeeId($date){
		 //$date = date('Y-m-d');
      	 $query = "SELECT p.*, r.userName FROM tbl_latecoming as p, tbl_user_reg as r WHERE  p.userId = r.regId AND datee = '$date' ORDER BY p.id DESC";
      	  $result = $this->db->select($query);
           return $result;

           /*$query = "SELECT p.*, r.userName, j.jobtitle  FROM tbl_interview as p, tbl_user_reg as r, tbl_jobtitle as j, tbl_department as s WHERE p.userId = r.regId AND p.jId = j.jId  ORDER BY p.id DESC";
           $query = "SELECT * FROM tbl_interview  ORDER BY id DESC";
           $result = $this->db->select($query);
           return $result;*/
	}
}//main class