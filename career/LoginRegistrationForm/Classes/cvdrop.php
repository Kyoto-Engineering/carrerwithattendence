<?php include_once "lib/Database.php"; ?>
<?php include_once "helpers/Format.php"; ?>
<?php include_once "lib/Session.php"; ?>

<?php
	/**
	* 
	*/
	class Curriculum
	{
		private $db;
		private $fm;

	public function __construct()
	
		{
			$this->db = new Database();
			$this->fm = new Format();
		}

		public function getSchool(){
			$query  = "SELECT * FROM  tbl_school ORDER BY scId DESC";
			$result = $this->db->select($query);
			return $result; 
		}
		public function getDivission(){
			$query  = "SELECT * FROM  tbl_division ORDER BY divId DESC";
			$result = $this->db->select($query);
			return $result; 
		}
			public function getCon(){
			$query  = "SELECT * FROM  tbl_controlling ORDER BY conId DESC";
			$result = $this->db->select($query);
			return $result; 
		}
		public function getGroup(){
			$query  = "SELECT * FROM  tbl_group ORDER BY gId DESC";
			$result = $this->db->select($query);
			return $result; 
		}

		public function getYear(){
			$query  = "SELECT * FROM  tbl_passingyear ORDER BY pyearid ASC";
			$result = $this->db->select($query);
			return $result; 
		}

		public function getGpa(){
			$query  = "SELECT * FROM  tbl_gpa ORDER BY gpaId DESC";
			$result = $this->db->select($query);
			return $result; 
		}
		public function getCollege(){
			$query  = "SELECT * FROM  tbl_college ORDER BY colid DESC";
			$result = $this->db->select($query);
			return $result; 
		}
		public function getspecilization(){
		$query = "SELECT * FROM tbl_specialization ORDER BY spId DESC";
		$result = $this->db->select($query);
		return $result;
	}
	
	public function getDsipline(){
		$query = "SELECT * FROM tbl_diploma_disipline ORDER BY id DESC";
		$result = $this->db->select($query);
		return $result;
	}
	
	public function getStudydegree(){
		$query = "SELECT * FROM tbl_degree_grad ORDER BY deid DESC";
		$result = $this->db->select($query);
		return $result;
	}
    
    	public function insertolevelsubject($data, $userId){
		$oid 		 = $this->fm->validation($data['oid']);
		$grade 		 = $this->fm->validation($data['grade']);

		$oid	 = mysqli_real_escape_string($this->db->link, $oid);
		$grade	 = mysqli_real_escape_string($this->db->link, $grade);

		if ($oid == ""|| $grade == "") {
			$msg = "You Dont Select your subject or not give your grade";
			return $msg;
		}else{
			$query = "INSERT INTO tbl_olevel_grads(userid, oid, grade) VALUES('$userId', '$oid', '$grade')";
			$result = $this->db->insert($query);
			if ($result) {
				echo "<script>window.location = 'oLevel.php'</script>";
			}else{
				$msg = "your Subject & Grade Has Not Been Record Successfully";
				return $msg;
			}
		}


	}

	public function insertAlevelsubject($data, $userId){
		$oid 		 = $this->fm->validation($data['oid']);
		$grade 		 = $this->fm->validation($data['grade']);

		$oid	 = mysqli_real_escape_string($this->db->link, $oid);
		$grade	 = mysqli_real_escape_string($this->db->link, $grade);

		if ($oid == ""|| $grade == "") {
			$msg = "You Dont Select your subject or not give your grade";
			return $msg;
		}else{
			$query = "INSERT INTO tbl_alevel_grade(userid, oid, grade) VALUES('$userId', '$oid', '$grade')";
			$result = $this->db->insert($query);
			if ($result) {
				echo "<script>window.location = 'aLevel.php'</script>";
			}else{
				$msg = "your Subject & Grade Has Not Been Record Successfully";
				return $msg;
			}
		}
	}
	public function getAllolevelresult($userId){
		  $query = "SELECT p.*, c.subjectname
				FROM tbl_olevel_grads as p, tbl_level_subject as c
				WHERE p.oid = c.oid AND userId = '$userId' ORDER BY oid DESC";
			//$query = "SELECT * FROM tbl_school WHERE userId = '$uId'";
			$result = $this->db->select($query);
			return $result;
	}
	
	public function getAllAlevelresult($userId){
		$query = "SELECT p.*, c.alevel
				FROM tbl_alevel_grade as p, tbl_level_subject as c
				WHERE p.oid = c.oid AND userId = '$userId' ORDER BY oid DESC";
			//$query = "SELECT * FROM tbl_school WHERE userId = '$uId'";
			$result = $this->db->select($query);
			return $result;
	}
	public function getAlevelsubjects(){
		$query = "SELECT * FROM tbl_level_subject ORDER BY oid ASC LIMIT 75";
		$result = $this->db->select($query);
		return $result;
	}
	public function getOlevelsubjects(){
		$query = "SELECT * FROM tbl_level_subject ORDER BY oid ASC LIMIT 49";
		$result = $this->db->select($query);
		return $result;
	}
	
	public function getDegree(){
		$query = "SELECT * FROM tbl_degree ORDER BY degId DESC";
		$result = $this->db->select($query);
		return $result;
	}
	public function getCgpa(){
		$query = "SELECT * FROM tbl_cgpa ORDER BY cgpaid DESC";
		$result = $this->db->select($query);
		return $result;
	}
	public function getVersity(){
		$query = "SELECT * FROM tbl_university ORDER BY uName ASC";
		$result = $this->db->select($query);
		return $result;
	}
	public function getDept(){
		$query = "SELECT * FROM tbl_department ORDER BY dId DESC";
		$result = $this->db->select($query);
		return $result;
	}
	public function getStudydept(){
		$query = "SELECT * FROM tbl_studydept ORDER BY studydeptId DESC";
		$result = $this->db->select($query);
		return $result;
	}
}//main class close