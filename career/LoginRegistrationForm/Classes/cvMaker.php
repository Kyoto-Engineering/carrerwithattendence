<?php include_once "../lib/Database.php"; ?>
<?php include_once "../helpers/Format.php"; ?>
<?php include_once "../lib/Session.php"; ?>

<?php
	/**
	* 
	*/
	class Module
	{
		private $db;
		private $fm;

		public function __construct()
	
		{
			$this->db = new Database();
			$this->fm = new Format();
		}	


public function addPhilosophy($data, $userId){
			
			$ques1 		= 	$this->fm->validation($data['ques1']);
			$ques2 		= 	$this->fm->validation($data['ques2']);
			$ques3 		= 	$this->fm->validation($data['ques3']);

			$userId  = mysqli_real_escape_string($this->db->link, $userId);
			$ques1 = mysqli_real_escape_string($this->db->link, $ques1);
			$ques2 = mysqli_real_escape_string($this->db->link, $ques2);
			$ques3 = mysqli_real_escape_string($this->db->link, $ques3);
			
			if ($ques1 == ""|| $ques2 == "" || $ques3 == "") {
				$msg = "<span style='color:red'>Field Must Not be Empty !!</span>";
				return $msg;
			}else{
				$query = "INSERT INTO tbl_philosophy(userId, ques1, ques2, ques3) VALUES('$userId', '$ques1', '$ques2', '$ques3')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "<span style='color:green'>Record Successfully</span>";
					return $msg;
				}else{
					$msg = "<span style='color:red'>Record Not Successfully</span>";
					return $msg;
				}
			}
		}

			public function addlanguage($data, $userId){
			$flang 		= 	$this->fm->validation($data['flang']);
			$reading 		= 	$this->fm->validation($data['reading']);
			$writing 		= 	$this->fm->validation($data['writing']);
			$speaking 		= 	$this->fm->validation($data['speaking']);

			$userId  = mysqli_real_escape_string($this->db->link, $userId);
			$flang   = mysqli_real_escape_string($this->db->link, $flang);
			$reading   = mysqli_real_escape_string($this->db->link, $reading);
			$writing   = mysqli_real_escape_string($this->db->link, $writing);
			$speaking   = mysqli_real_escape_string($this->db->link, $speaking);

			if ($flang == ""|| $reading == "" || $writing == "" || $speaking == "") {
				$msg = "<span style='color:green'>Field Must Not be Empty !!</span>";
				return $msg;
			}else{
				$query = "INSERT INTO tbl_lang(userId, flang, reading, writing, speaking) VALUES('$userId', '$flang', '$reading', '$writing', '$speaking')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "<span style='color:green'>Language Successfully Added</span>";
					return $msg;
				}else{
					$msg = "<span style='color:green'>Record Not Successfully</span>";
					return $msg;
				}
			}
			
		}
		
		public function addskill($data, $userId){
			$skill 		= 	$this->fm->validation($data['skill']);
			$descp 		= 	$this->fm->validation($data['descp']);

			$userId  = mysqli_real_escape_string($this->db->link, $userId);
			$skill   = mysqli_real_escape_string($this->db->link, $skill);
			$descp   = mysqli_real_escape_string($this->db->link, $descp);

			if ($skill==""||$descp == "") {
				$msg = "<span style='color:red'>Field Must Not Be Empty !!</span>";
				return $msg;
			}else{
				$query  = "INSERT INTO tbl_skills(userId, skill, descp) VALUES('$userId', '$skill', '$descp')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "<span style='color:green'>Record Successfully</span>";
					return $msg;
				}else{
					$msg = "<span style='color:red'>Record Not Successfully</span>";
					return $msg;
				}
			}

		}

		public function addAchivement($data, $userId){
			
			$achivement		= 	$this->fm->validation($data['achivement']);
			$detail 		= 	$this->fm->validation($data['detail']);

			$userId  = mysqli_real_escape_string($this->db->link, $userId);
			$achivement = mysqli_real_escape_string($this->db->link, $achivement);
			$detail = mysqli_real_escape_string($this->db->link, $detail);

			if ($achivement==""||$detail == "") {
				$msg = "<span style='color:red'>Field Must Not Be Empty !!</span>";
				return $msg;
			}else{
				$query = "INSERT INTO tbl_achivement(userId, achivement, detail) VALUES('$userId', '$achivement', '$detail')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "<span style='color:red'>Record Successfully</span>";
					return $msg;
				}else{
					$msg = "<span style='color:red'>Record Not Successfully</span>";
					return $msg;
				}
			}
		}

		public function addExtra($data, $userId){
			
			$activity		= 	$this->fm->validation($data['activity']);
			$detail 		= 	$this->fm->validation($data['detail']);

			$userId  = mysqli_real_escape_string($this->db->link, $userId);
			$activity = mysqli_real_escape_string($this->db->link, $activity);
			$detail = mysqli_real_escape_string($this->db->link, $detail);

			if ($activity==""||$detail == "") {
				$msg = "<span style='color:red'>Field Must Not Be Empty !!</span>";
				return $msg;
			}else{
				$query = "INSERT INTO tbl_extra(userId, activity, detail) VALUES('$userId', '$activity', '$detail')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "Record Successfully";
					return $msg;
				}else{
					$msg = "Record Not Successfully";
					return $msg;
				}
			}
		}

		public function getuserInfo($userId){
			$query = "SELECT * FROM tbl_user_reg WHERE regId = '$userId'";
			$res = $this->db->select($query);
			return $res;
		}

		public function getuseradd($userId){
			$query = "SELECT p.*, d.divName, e.distName, t.thName, b.postName 
			FROM tbl_address as p, tbl_division as d, tbl_district as e, tbl_thana as t, tbl_post as b
			WHERE p.divId= d.divId AND
			      p.distId = e.distId AND
			      p.thId = t.thId AND
			      p.postId = b.postId AND
			      p.userId = '$userId'" ;
			//$query = "SELECT * FROM tbl_school WHERE userId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getObjective($userId){
			$query = "SELECT * FROM tbl_philosophy WHERE userId = '$userId'";
			$res = $this->db->select($query);
			return $res;
		}

		public function getundergraduate($userId){
			$query = "SELECT p.*, c.pyear, d.studyDept, u.uName
				FROM tbl_grad as p, tbl_passingyear as c, tbl_studydept as d, tbl_university as u
				WHERE p.pyearid = c.pyearid AND p.studydeptId = d.studydeptId AND p.uId = u.uId AND userId = '$userId'";
			$value = $this->db->select($query);
			return $value;
		}

		 public function getAllExp($userId){
			$query  = "SELECT * FROM  tbl_workingexperience WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getTraining($userId){
			$query  = "SELECT * FROM  tbl_training WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		public function gettitle($userId){
			$query  = "SELECT * FROM  tbl_training WHERE userId='$userId' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}

		public function gettPitle($userId){
			$query  = "SELECT * FROM  tbl_training WHERE userId='$userId' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}

		public function getgraduationby($userId){
			$query = "SELECT p.*, c.pyear, d.studyDept, u.uName
				FROM tbl_grad as p, tbl_passingyear as c, tbl_studydept as d, tbl_university as u
				WHERE p.pyearid = c.pyearid AND p.studydeptId = d.studydeptId AND p.uId = u.uId AND userId = '$userId'";
			$value = $this->db->select($query);
			return $value;
		}

		public function getpgraduationby($userId){
			$query = "SELECT p.*, c.pyear, d.studyDept, u.uName
				FROM tbl_postgraduate as p, tbl_passingyear as c, tbl_studydept as d, tbl_university as u
				WHERE p.pyearid = c.pyearid AND p.studydeptId = d.studydeptId AND p.uId = u.uId AND userId = '$userId'";
			$value = $this->db->select($query);
			return $value;
		}

		public function gethscinfoby($userId){
			$query = "SELECT p.*, c.pyear, g.GName
				FROM tbl_hsc as p, tbl_passingyear as c, tbl_group as g 
				
				WHERE  p.pyearid = c.pyearid AND p.gId = g.gId  AND userId = '$userId'";

		
		$value = $this->db->select($query);
		return $value;
		}

		public function getSchoolinfoby($userId){
		    $query = "SELECT p.*, c.pyear,  g.GName
				FROM tbl_school as p, tbl_passingyear as c, tbl_group as g
				WHERE p.gId = g.gId AND p.pyearid = c.pyearid AND userId = '$userId'";
			//$query = "SELECT * FROM tbl_school WHERE userId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getdiplomainfoby($userId){
			$query = "SELECT p.*, c.pyear, d.deptName, g.degName
				FROM tbl_diploma as p, tbl_passingyear as c,  tbl_department as d, tbl_degree as g
				WHERE  p.pyearid = c.pyearid AND p.degId = g.degId AND p.dId = d.dId AND userId = '$userId'";

		
		$value = $this->db->select($query);
		return $value;
		}

		public function getaLevelinfoby($userId){
			$query = "SELECT p.*, c.pyear, j.divName
				FROM tbl_alevel as p, tbl_passingyear as c, tbl_division as j
				WHERE p.divId = j.divId AND p.pyearid = c.pyearid AND userId = '$userId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getoLevelinfoby($userId){
			$query = "SELECT p.*, c.pyear, j.divName
				FROM tbl_olevel as p, tbl_passingyear as c, tbl_division as j
				WHERE p.divId = j.divId AND p.pyearid = c.pyearid AND userId = '$userId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getlanguage($userId){
			$query  = "SELECT * FROM  tbl_lang WHERE userId='$userId' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}

		public function getUserlanguage($userId){
			$query  = "SELECT * FROM  tbl_lang WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		public function getexp($userId){
			$query  = "SELECT * FROM  tbl_workingexperience WHERE userId='$userId' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}

		public function getpersonalInfo($userId){
			$query = "SELECT * FROM tbl_personalinfo WHERE userId = '$userId'";
			$value = $this->db->select($query);
			return $value;
		}
		public function getpersonalDob($userId){
			$query = "SELECT * FROM tbl_user_reg WHERE regId = '$userId'";
			$value = $this->db->select($query);
			return $value;
		}
		public function getpaddress($userId){
			$query = "SELECT r.*, s.distName, t.thName, b.postName
			 FROM tbl_paddress as r, tbl_district as s, tbl_thana as t, tbl_post as b
			  WHERE r.distId = s.distId AND r.thId = t.thId AND r.postId = b.postId AND r.userId = '$userId'";
			//$query = "SELECT * FROM tbl_paddress WHERE userId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}


	}?>