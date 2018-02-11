<?php include_once "../lib/Database.php"; ?>
<?php include_once "../helpers/Format.php"; ?>
<?php include_once "../lib/Session.php"; ?>

<?php
	/**
	* 
	*/
	class Resume
	{
		
		private $db;
		private $fm;
	public function __construct()
	
		{
			$this->db = new Database();
			$this->fm = new Format();
		}

		public function getSchoolinfoby($uId){
		    $query = "SELECT p.*, c.pyear, j.divName, g.GName
				FROM tbl_school as p, tbl_passingyear as c, tbl_division as j, tbl_group as g
				WHERE p.divId = j.divId AND p.gId = g.gId AND p.pyearid = c.pyearid AND userId = '$uId'";
			//$query = "SELECT * FROM tbl_school WHERE userId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getoLevelinfoby($uId){
			$query = "SELECT p.*, c.pyear, j.divName
				FROM tbl_olevel as p, tbl_passingyear as c, tbl_division as j
				WHERE p.divId = j.divId AND p.pyearid = c.pyearid AND userId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}

			public function gethscinfoby($uId){
			$query = "SELECT p.*, c.pyear, j.divName
				FROM tbl_hsc as p, tbl_passingyear as c, tbl_division as j
				
				WHERE p.divId = j.divId AND p.pyearid = c.pyearid AND userId = '$uId'";

		
		$value = $this->db->select($query);
		return $value;
		}

		public function getdiplomainfoby($uId){
			$query = "SELECT p.*, c.pyear, j.divName, d.deptName, g.degName
				FROM tbl_diploma as p, tbl_passingyear as c, tbl_division as j, tbl_department as d, tbl_degree as g
				WHERE p.divId = j.divId AND p.pyearid = c.pyearid AND p.degId = g.degId AND p.dId = d.dId AND userId = '$uId'";

		
		$value = $this->db->select($query);
		return $value;
		}

		public function getgraduationby($uId){
			$query = "SELECT p.*, c.pyear, d.studyDept, u.uName
				FROM tbl_grad as p, tbl_passingyear as c, tbl_studydept as d, tbl_university as u
				WHERE p.pyearid = c.pyearid AND p.studydeptId = d.studydeptId AND p.uId = u.uId AND userId = '$uId'";
			$value = $this->db->select($query);
			return $value;
		}
		
		public function getpgraduationby($uId){
			$query = "SELECT p.*, c.pyear, d.studyDept, u.uName
				FROM tbl_postgraduate as p, tbl_passingyear as c, tbl_studydept as d, tbl_university as u
				WHERE p.pyearid = c.pyearid AND p.studydeptId = d.studydeptId AND p.uId = u.uId AND userId = '$uId'";
			$value = $this->db->select($query);
			return $value;
		}

		public function updateStatus($status, $uId, $jId){
			
			$status = mysqli_real_escape_string($this->db->link, $status);

			$Mquery = "SELECT * FROM tbl_user_reg WHERE regId = '$uId'";
			$result = $this->db->select($Mquery)->fetch_assoc();
			$email = $result['email'];
			$userName = $result['userName'];

			if ($status == "") {
				$msg = "Please Give Your Opinion First & Then Click SEND";
				return $msg;
			}else{
				$query = "UPDATE `tbl_apply` SET `status`='$status' WHERE userId = '$uId' AND jId = '$jId'";
				$update_row = $this->db->update($query);
				if ($update_row) {
					    //$msg = "Your Option Has Been Recorded";
						    //return $msg;
						   					?>
                                <script>
                                alert('You have been Shortlisted');
                                window.location.href='applicant_details.php';
                                </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "recruitment@keal.com.bd";
							$email_subject= "You have been Shortlisted";
							$email_message= "
Dear $userName,
Congratulations!!
 
Recruitment Officer has found you to be a competent
candidate for interview. Very soon you will receive an email
notifying your date and time of interview.
 
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

							$email_subject1= "Acceptance of your Application";
							$email_message1= "
Dear $userName,
Congratulations!!
 
Recruitment Officer has found you to be a competent
candidate for interview. Very soon you will receive an email
notifying your date and time of interview.
 
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
				
						}else{
						    $msg = "Your Option Not Recorded";
						    return $msg;
						}
			}
		}

		public function gettrainingby($uId){
		$query = "SELECT * FROM tbl_training WHERE userId = '$uId'";
		$result = $this->db->select($query);
		return $result;
		}

		public function getjobs($applicationId){
			$query = "SELECT p.*, j.jobtitle
				FROM tbl_apply as p, tbl_jobtitle as j
				WHERE p.jId = j.jId
				AND userId = '$applicationId'";

		
		$value = $this->db->select($query);
		return $value;
		}

		

		public function interviewSchedule($data,  $applicationId){
			$jId		   = $this->fm->validation($data['jId']);
			$interviewdate = $this->fm->validation($data['interviewdate']);
			$starttime	   = $this->fm->validation($data['starttime']);
			$endtime	   = $this->fm->validation($data['endtime']);
			$venue		   = $this->fm->validation($data['venue']);

			$jId		 	= mysqli_real_escape_string($this->db->link, $jId);
			$interviewdate	= mysqli_real_escape_string($this->db->link, $interviewdate);
			$starttime		= mysqli_real_escape_string($this->db->link, $starttime);			
			$endtime		= mysqli_real_escape_string($this->db->link, $endtime);
			$venue			= mysqli_real_escape_string($this->db->link, $venue);

			if ($jId == "" || $interviewdate == "" || $starttime = "" || $endtime == "" || $venue == "") {
				$msg = "<span style='color:red; font-style;blod;' >Set All For Scheduling</span>";
				return $msg;
			}
			
			$Cquery  = "SELECT * FROM tbl_interview WHERE jId = '$jId'";
				$check = $this->db->select($Cquery);
					if ($check) {
					$msg = "<span style='color:red;'>Already Scheduled InterView For This Job!!</span>";
					return $msg;
			}else{
				$insert_row = "INSERT INTO tbl_interview(jId, userId, interviewdate, starttime, endtime, venue) VALUES('$jId', '$applicationId', '$interviewdate', '$starttime', '$endtime', '$venue')";
				$result = $this->db->insert($insert_row);
				if ($result) {
					$msg = "<span style='color:green'>Schedule Set Successfully</span>";
					return $msg;
				}else{
					$msg = "<span style='color:red'>Schedule Not Set!!!</span>";
					return $msg;
				}
			}
		}

		/*public function getInschedule(){
			$query = "SELECT p.*, j.jobtitle
				FROM tbl_interview as p, tbl_jobtitle as j
				WHERE p.jId = j.jId
				ORDER BY p.jId DESC";

		
		$value = $this->db->select($query);
		return $value;
		}*/

		public function getApplicantid($uId){
			$Iquery = "SELECT userId FROM tbl_apply WHERE userId ='$uId' LIMIT 1";
			$result = $this->db->select($Iquery);
			return $result;
		}

		public function delByid($Did){
			$query = "DELETE FROM tbl_interview WHERE id = '$Did'";
			$delData = $this->db->delete($query);
			if ($delData) {
				echo "<script>window.location = 'create_schedule.php'</script>";
			}else{
				$msg = "Data Not Deleted";
				return $msg;
			}
		}

		public function geteditjobs($sId){
			$query  = "SELECT p.*, j.jobtitle
				FROM tbl_interview as p, tbl_jobtitle as j
				WHERE p.jId = j.jId AND p.id = '$sId'";
		$getCat = $this->db->select($query);
		return $getCat;
		}

		public function updateSchedule($data,  $id){
			$jId		   = $this->fm->validation($data['jId']);
			$interviewdate = $this->fm->validation($data['interviewdate']);
			$starttime	   = $this->fm->validation($data['starttime']);
			$endtime	   = $this->fm->validation($data['endtime']);
			$venue		   = $this->fm->validation($data['venue']);

			$jId		 	= mysqli_real_escape_string($this->db->link, $jId);
			$interviewdate	= mysqli_real_escape_string($this->db->link, $interviewdate);
			$starttime		= mysqli_real_escape_string($this->db->link, $starttime);			
			$endtime		= mysqli_real_escape_string($this->db->link, $endtime);
			$venue			= mysqli_real_escape_string($this->db->link, $venue);

			if ($jId == "" || $interviewdate == "" || $starttime = "" || $endtime == "" || $venue == "") {
				$msg = "<span style='color:red; font-style;blod;' >Set All For Scheduling</span>";
				return $msg;
			}else{
				$update_row = "UPDATE `tbl_interview` SET 
				jId = '$jId',
				interviewdate = '$interviewdate', 
				starttime = '$starttime', 
				endtime = '$endtime', 
				venue = '$venue'
				WHERE userId = '$id'";
				 
				
				$update = $this->db->update($update_row);
	    		if ($update) {
	    			$msg = "Schedule Updated!!";
	    			return $msg;
	    		}else{
	    			$msg = "Product Not Updated!!";
	    			return $msg;
	    		 }
			}
		}

		public function getscheduleJob(){
			$query = "SELECT p.*, j.jobtitle, u.userName
				FROM tbl_disappertime as p, tbl_jobtitle as j, tbl_user_reg as u
				WHERE p.jId = j.jId AND p.userId = u.regId ORDER BY  p.id DESC";
			$result = $this->db->select($query);
			return $result;
		}
        public function getrescheduleJob($id){
            $query = "SELECT p.*, j.jobtitle, u.userName
				FROM tbl_disappertime as p, tbl_jobtitle as j, tbl_user_reg as u
				WHERE p.jId = j.jId AND p.userId = u.regId AND p.userId = '$id'";
			$result = $this->db->select($query);
			return $result;
        }
		public function Confirmschedule($status, $id){
			
			$status = $this->fm->validation($status);
			$id      = mysqli_real_escape_string($this->db->link, $id);
			$status = mysqli_real_escape_string($this->db->link, $status);

		if(empty($status)){
			$msg = "Selection field is Empty!!";
			return $msg;
		}else{
			$query = "UPDATE tbl_disappertime
					  SET 
					  status = '$status'
					  WHERE userId = '$id'";
			$update_row = $this->db->update($query);
			if($update_row){
				$msg = "<span style='color:green;'>Your Opinion For This Schedule Has Been Recorded Successfully...</span>";
				return $msg;

			}else{
				$msg = "Category Not Updated!";
				return $msg;
			}
		}
					}
					
				// 	steps condition for applicant identify
		public function getUser($uId){
			$query = "SELECT * FROM tbl_user_reg WHERE regId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}
		public function getUserstep($uId){
			$query = "SELECT * FROM tbl_user_reg WHERE regId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}
		public function getUsersteptwo($uId){
			$query = "SELECT * FROM tbl_apply WHERE userId = '$uId' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}
		
		public function getProfilepic($uId){
			$query = "SELECT * FROM tbl_user_reg WHERE regId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}
		
		// 	steps condition for applicant identify
		public function getWorkby($uId){
			$query = "SELECT * FROM tbl_workingexperience WHERE userId = '$uId'";
		$result = $this->db->select($query);
		return $result;
		    
		
		}
		
		public function getdocument($uId){
				$query = "SELECT * FROM tbl_upload WHERE userId = '$uId'";
				$result = $this->db->select($query);
				return $result;
			}
		public function getreStatus($userId){
			$query = "SELECT * FROM tbl_disappertime WHERE userId = '$userId'";
				$result = $this->db->select($query);
				return $result;
		}
		
		public function getSignupdate($uId){
				$query = "SELECT * FROM tbl_user_reg WHERE regId = '$uId'";
				$result = $this->db->select($query);
				return $result;
		}

		public function getShortList($uId){
				$query = "SELECT * FROM tbl_apply WHERE userId = '$uId'";
				$result = $this->db->select($query);
				return $result;
		}
		

		public function getAttendence($uId){
				$query = "SELECT * FROM tbl_interview WHERE userId = '$uId'";
				$result = $this->db->select($query);
				return $result;
		}

		public function getInterviewDate($uId){
				$query = "SELECT * FROM tbl_interview WHERE userId = '$uId'";
				$result = $this->db->select($query);
				return $result;
		}
		
		public function addlistingpeople($data, $uId){
		$listing = 	$this->fm->validation($data['listing']);

		$listing = mysqli_real_escape_string($this->db->link, $listing);

		if ($listing == "") {
			$msg = "Keep Check Any One!!";
			return $msg;
		}else{
			$Query = "UPDATE tbl_user_reg 
			SET 
			listing = '$listing'
			
			WHERE regId = '$uId'";
			$update_row = $this->db->update($Query);
			if ($update_row) {
				$msg = "<span style='color:green'>Successfully Add Comment</span>";
				return $msg;
			}else{
				$msg = "<span style='color:red'>Not Add Comment</span>";
				return $msg;
			}
		}
	}
	public function getApplicant($uId){
			$query = "SELECT * FROM tbl_user_reg WHERE regId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}
		
	public function getAll($uId, $jId){

        $query = "SELECT * FROM tbl_interview WHERE userId = '$uId' AND jId='$jId' ";
				$result = $this->db->select($query);
				return $result;
	}
	
	public function getshortstat($uId,$jId){

        $query = "SELECT * FROM tbl_apply WHERE userId = '$uId' AND jId='$jId' ";
				$result = $this->db->select($query);
				return $result;
	}
	
	public function getMarkedlist($uId, $jId){
	    $query = "SELECT * FROM tbl_interview WHERE userId = '$uId' AND jId='$jId' ";
		$result = $this->db->select($query);
		return $result;
	}
	
	public function getpreselect($uId, $jId){
	    $query = "SELECT * FROM step_07 WHERE userId = '$uId' AND jId='$jId' ";
				$result = $this->db->select($query);
				return $result;
	}

	public function getAllList($uId){

$query = "SELECT * FROM tbl_user_reg WHERE regId  = '$uId' ";
				$result = $this->db->select($query);
				return $result;
	}
	public function getrefAl($uId){
			$Jquery = "SELECT p.*, s.specialization, r.relationType, j.distName, t.thName, u.postName  FROM tbl_reference as p, tbl_specialization as s, tbl_relationship as r, tbl_district as j,tbl_thana as t,tbl_post as u WHERE p.specialization = s.spId AND p.relationship = r.id AND p.distId = j.distId AND p.thId = t.thId And p.postId=u.postId AND p.userId = '$uId'";
        $result = $this->db->select($Jquery);
        return $result;
		
		
		
		}
		
		 public function updateRefStat($refstat, $uId){
        $refstatus = mysqli_real_escape_string($this->db->link, $refstat);
        $query = "UPDATE tbl_reference SET `refstat`=1 WHERE userId = '$uId' ";
		$update_row = $this->db->update($query);

		$Cquery = "SELECT * FROM tbl_user_reg WHERE regId = '$uId'";
		$result = $this->db->select($Cquery)->fetch_assoc();
		$username = $result['userName'];
		$umail = $result['email'];
		$contact = $result['phone'];

		$Rquery = "SELECT p.*, s.specialization, r.relationType, j.distName, t.thName, u.postName  FROM tbl_reference as p, tbl_specialization as s, tbl_relationship as r, tbl_district as j,tbl_thana as t,tbl_post as u WHERE p.specialization = s.spId AND p.relationship = r.id AND p.distId = j.distId AND p.thId = t.thId And p.postId=u.postId AND p.userId = '$uId'";
        $result = $this->db->select($Rquery);
        if ($result) {
			while ($data = $result->fetch_assoc()) {
				$distName = $data['distName'];
				$thName = $data['thName'];
				$postName = $data['postName'];
       
			}
		}

		
		$query = "SELECT * FROM tbl_personalinfo WHERE userId = '$uId'";
		$result = $this->db->select($query);
		if ($result) {
			while ($data = $result->fetch_assoc()) {
				$fName = $data['fName'];
				$mName = $data['mName'];
				$sName = $data['sName'];
       
			}
		}

		

		/*$Aquery = "SELECT * FROM tbl_paddress WHERE userId = '$userId'";
		$result = $this->db->select($Aquery)->fetch_assoc();*/

		  $Jquery = "SELECT p.*, j.distName, t.thName, u.postName  FROM tbl_address as p, tbl_district as j,tbl_thana as t,tbl_post as u WHERE p.distId = j.distId AND p.thId = t.thId And p.postId=u.postId AND p.userId = '$uId'";
        $result = $this->db->select($Jquery)->fetch_assoc();
        
        $name = $result['name'];
        $organization = $result['organization'];
        $designation = $result['designation'];
        $email = $result['email'];
        $phone = $result['phone'];
		$distUName = $result['distName'];
		$thUName = $result['thName'];
		$postUName = $result['postName'];
	
		if($update_row){ ?>
			<script>
                                alert('References will be available after Refree verification');
                                window.location.href='';
                                </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "recruitment@keal.com.bd";
							$email_subject= "Reference Confirmation Letter";
							$email_message= "
Dear $name


Designation:$designation
Organization:$organization
Address: $postName,$thName,$distName
Phone  :$phone
Email  :$email

We are writing from Recruitment Department of Kyoto Engineering & Automation Ltd. 

We have received your contact details from the following individual who happens to be your close contact:

Name of Job Applicant: $username
Father: $fName
Mother: $mName
Spouse: $sName
Address:$postUName,$thUName,$distUName
Email Address: $umail
Contact Number: $contact

The reason we are writing to you is that the aforementioned individual has applied for a job in our company and has mentioned you as a reference for the job. A reference is a dignified personality who may recommend a candidate for a job in our company. Your recommendations are quite valuable for us so as for the job applicant.

We would appreciate your kind opinion on the reference. By clicking the following link you confirm to us that you recommend the above job applicant as a worthy candidate for a job in our company. You also confirm whether you accept or decline:

I recommend the aforementioned job applicant 
http://recruitment.keal.com.bd/LoginRegistrationForm/references_verification.php?phone=$phone

I DO NOT recommend the aforementioned job applicant 
http://recruitment.keal.com.bd/LoginRegistrationForm/ref_confirm.php?phone=$phone

Thanks again for continuous support and kind reference and opinion as above.

See you again!!

Best Regards,

Recruitment Officer 
Kyoto Engineering & Automation Ltd.
";
							
							


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "Reference Confirmation Letter";
		  $email_message1= "
Dear $name

Designation:$designation
Organization:$organization
Address: $postName,$thName,$distName
Phone  :$phone
Email  :$email

We are writing from Recruitment Department of Kyoto Engineering & Automation Ltd. 

We have received your contact details from the following individual who happens to be your close contact:

Name of Job Applicant:$username
Father: $fName
Mother: $mName
Spouse: $sName
Address:$postUName,$thUName,$distUName
Email Address: $umail
Contact Number: $contact

The reason we are writing to you is that the aforementioned individual has applied for a job in our company and has mentioned you as a reference for the job. A reference is a dignified personality who may recommend a candidate for a job in our company. Your recommendations are quite valuable for us so as for the job applicant.

We would appreciate your kind opinion on the reference. By clicking the following link you confirm to us that you recommend the above job applicant as a worthy candidate for a job in our company. You also confirm whether you accept or decline:

I recommend the aforementioned job applicant 
http://recruitment.keal.com.bd/LoginRegistrationForm/references_verification.php?phone=$phone

I DO NOT recommend the aforementioned job applicant 
http://recruitment.keal.com.bd/LoginRegistrationForm/ref_confirm.php?phone=$phone

Thanks again for continuous support and kind reference and opinion as above.

See you again!!

Best Regards,

Recruitment Officer 
Kyoto Engineering & Automation Ltd.
";

	                    mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");

			}
			
			
		}
		
		
		  public function updateRefRej($refrej, $uId){
        $refrej = mysqli_real_escape_string($this->db->link, $refrej);
        $query = "UPDATE tbl_reference SET `refrej`=1 WHERE userId = '$uId' ";
				$update_row = $this->db->update($query);
       }
       
       public function getuserreferencesBy($uId){
       	$Jquery = "SELECT p.*, s.specialization, r.relationType, j.distName, t.thName, u.postName  FROM tbl_reference as p, tbl_specialization as s, tbl_relationship as r, tbl_district as j,tbl_thana as t,tbl_post as u WHERE p.specialization = s.spId AND p.relationship = r.id AND p.distId = j.distId AND p.thId = t.thId And p.postId=u.postId AND p.userId = '$uId' AND agree='1'";
        $result = $this->db->select($Jquery);
        return $result;
       }
       
        public function acceptReference($refstat, $uId){
       	$refstat = mysqli_real_escape_string($this->db->link, $refstat);
        
         	//data from reference table
      $Jquery = "SELECT p.*, j.distName, t.thName, u.postName  FROM tbl_reference as p, tbl_district as j,tbl_thana as t,tbl_post as u WHERE p.distId = j.distId AND p.thId = t.thId And p.postId=u.postId AND p.userId = '$uId'";
       $result = $this->db->select($Jquery)->fetch_assoc();
        $designation = $result['designation'];
        $organization = $result['organization'];
        $thName = $result['thName'];
        $postName = $result['postName'];
        $distName = $result['distName'];
        $phone = $result['phone'];
        $remail = $result['email'];
        $name = $result['name'];
        
        //data from user reg table
        $Mquery = "SELECT * FROM tbl_user_reg WHERE regId = '$uId'";
		$result = $this->db->select($Mquery)->fetch_assoc();
		$email = $result['email'];
		$userName = $result['userName'];
		$contact = $result['phone'];

	
	
		//data from
		$Jquery = "SELECT p.*, j.distName, t.thName, u.postName  FROM tbl_address as p, tbl_district as j,tbl_thana as t,tbl_post as u WHERE p.distId = j.distId AND p.thId = t.thId And p.postId=u.postId AND p.userId = '$uId'";
        $result = $this->db->select($Jquery)->fetch_assoc();
        $distUName = $result['distName'];
		$thUName = $result['thName'];
		$postUName = $result['postName'];

		$query = "SELECT * FROM tbl_personalinfo WHERE userId = '$uId'";
		$result = $this->db->select($query);
		if ($result) {
			while ($data = $result->fetch_assoc()) {
				$fName = $data['fName'];
				$mName = $data['mName'];
				$sName = $data['sName'];
   
			}
		}


	

       	$query = "UPDATE tbl_reference SET refstat = '$refstat' WHERE userId = '$uId'";
       	$result = $this->db->update($query);
       	if ($result) {
				       		?>
				       		<script>
                                alert('References will be available after Refree verification');
                                window.location.href='applied_job.php';
                                </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "protyasha.s@keal.com.bd";
							$email_subject= "Reference Confirmation Letter";
							$email_message= "
Dear $name
$designation
$organization
$postName,$thName,$distName
Phone  :$phone
Email  :$remail

We are writing from Recruitment Department of Kyoto Engineering & Automation Ltd. 

We have received your contact details from the following individual who happens
to be your close contact:

Name of Job Applicant: $userName
Father: $fName
Mother: $mName
Spouse: $sName
Address:$postUName,$thUName,$distUName
Email Address: $email
Contact Number: $contact

The reason we are writing to you is that the aforementioned individual has
applied for a job in our company and has mentioned you as a reference for the
job. A reference is a dignified personality who may recommend a candidate for a
job in our company. Your recommendations are quite valuable for us so as for the
job applicant.

We would appreciate your kind opinion on the reference. By clicking the
following link you confirm to us that you recommend the above job applicant as a
worthy candidate for a job in our company. You also confirm whether you accept
or decline:

I recommend the aforementioned job applicant 
http://recruitment.keal.com.bd/LoginRegistrationForm/references_verification.php?phone=$phone

I DO NOT recommend the aforementioned job applicant 
http://recruitment.keal.com.bd/LoginRegistrationForm/ref_confirm.php?phone=$phone

Thanks again for continuous support and kind reference and opinion as above.



Best Regards,

Recruitment Officer 
Kyoto Engineering & Automation Ltd.
";
							
							


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "Reference Confirmation Letter";
		  $email_message1= "
Dear $name
$designation
$organization
$postName,$thName,$distName
Phone  :$phone
Email  :$remail

We are writing from Recruitment Department of Kyoto Engineering & Automation Ltd. 

We have received your contact details from the following individual who happens to be your close contact:

Name of Job Applicant: $userName
Father: $fName
Mother: $mName
Spouse: $sName
Address:$postUName,$thUName,$distUName
Email Address: $email
Contact Number: $contact


The reason we are writing to you is that the aforementioned individual has applied for a job in our company and has mentioned you as a reference for the job. A reference is a dignified personality who may recommend a candidate for a job in our company. Your recommendations are quite valuable for us so as for the job applicant.

We would appreciate your kind opinion on the reference. By clicking the following link you confirm to us that you recommend the above job applicant as a worthy candidate for a job in our company. You also confirm whether you accept or decline:

I recommend the aforementioned job applicant 
http://recruitment.keal.com.bd/LoginRegistrationForm/references_verification.php?phone=$phone

I DO NOT recommend the aforementioned job applicant 
http://recruitment.keal.com.bd/LoginRegistrationForm/ref_confirm.php?phone=$phone

Thanks again for continuous support and kind reference and opinion as above.



Best Regards,

Recruitment Officer 
Kyoto Engineering & Automation Ltd.
";

	                    mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");	
       	}
       }
       
       
       
    public function rejectReference($refrej, $uId){
       	$refstat = mysqli_real_escape_string($this->db->link, $refstat);
        
         	//data from reference table
      $Jquery = "SELECT p.*, j.distName, t.thName, u.postName  FROM tbl_reference as p, tbl_district as j,tbl_thana as t,tbl_post as u WHERE p.distId = j.distId AND p.thId = t.thId And p.postId=u.postId AND p.userId = '$uId'";
       $result = $this->db->select($Jquery)->fetch_assoc();
        $designation = $result['designation'];
        $organization = $result['organization'];
        $thName = $result['thName'];
        $postName = $result['postName'];
        $distName = $result['distName'];
        $phone = $result['phone'];
        $remail = $result['email'];
        $name = $result['name'];
        
        //data from user reg table
        $Mquery = "SELECT * FROM tbl_user_reg WHERE regId = '$uId'";
		$result = $this->db->select($Mquery)->fetch_assoc();
		$email = $result['email'];
		$userName = $result['userName'];
		$contact = $result['phone'];

	
	
		//data from
		$Jquery = "SELECT p.*, j.distName, t.thName, u.postName  FROM tbl_address as p, tbl_district as j,tbl_thana as t,tbl_post as u WHERE p.distId = j.distId AND p.thId = t.thId And p.postId=u.postId AND p.userId = '$uId'";
        $result = $this->db->select($Jquery)->fetch_assoc();
        $distUName = $result['distName'];
		$thUName = $result['thName'];
		$postUName = $result['postName'];

		$query = "SELECT * FROM tbl_personalinfo WHERE userId = '$uId'";
		$result = $this->db->select($query);
		if ($result) {
			while ($data = $result->fetch_assoc()) {
				$fName = $data['fName'];
				$mName = $data['mName'];
				$sName = $data['sName'];
   
			}
		}


	

       	$query = "UPDATE tbl_reference SET refrej = '$refrej' WHERE userId = '$uId'";
       	$result = $this->db->update($query);
       	if ($result) {
				       		?>
				       		<script>
                                alert('References will be available after Refree verification');
                                window.location.href='applied_job.php';
                                </script>
                            <?php


							$headers = 'From: '.$email."\r\n".
							 
							'Reply-To: '.$email."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_to = "protyasha.s@keal.com.bd";
							$email_subject= "Reference Confirmation Letter";
							$email_message= "
Dear $userName,
We are writing from Recruitment Department of Kyoto Engineering & Automation Ltd.

Reference details
Name : $name
Designation : $designation
Organization : $organization
$postName,$thName,$distName
Phone  :$phone
Email  :$remail
 We are rejecting your reference. Please Give Another refrences.




Best Regards,

Recruitment Officer 
Kyoto Engineering & Automation Ltd.
";
							
							


							$headers1 = 'From: '.$email_to."\r\n".
							 
							'Reply-To: '.$email_to."\r\n" .
							 
							'X-Mailer: PHP/' . phpversion();

							$email_subject1= "Reference Confirmation Letter";
		  $email_message1= "
Dear $userName,
We are writing from Recruitment Department of Kyoto Engineering & Automation Ltd.

Reference details
Name : $name
Designation : $designation
Organization : $organization
$postName,$thName,$distName
Phone  :$phone
Email  :$remail
 We are rejecting your reference. Please Give Another refrences.




Best Regards,

Recruitment Officer 
Kyoto Engineering & Automation Ltd.
";

	                    mail("<$email_to>","$email_subject","$email_message","$headers");

							mail("<$email>","$email_subject1","$email_message1","$headers1");	
       	}
       }
       
       
	}//main class