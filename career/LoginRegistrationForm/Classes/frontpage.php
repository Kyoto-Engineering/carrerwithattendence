<?php include_once "LoginRegistrationForm/lib/Database.php"; ?>
<?php include_once "LoginRegistrationForm/helpers/Format.php"; ?>


<?php
	/**
	* 
	*/
	class Forntlist
	{
		
		private $db;
		private $fm;
	public function __construct()
	
		{
			$this->db = new Database();
			$this->fm = new Format();
		}

		public function getJoblist(){
			$query = "SELECT p.*, j.jobtitle, d.deptName FROM tbl_user_job as p, tbl_jobtitle as j, tbl_department as d
			WHERE p.jId = j.jId AND p.dId = d.dId ORDER BY jsId DESC LIMIT 5";
			$result = $this->db->select($query);
			return $result;
		}
		
	public function getAllJoblist(){
			$query = "SELECT p.*, j.jobtitle, d.deptName FROM tbl_user_job as p, tbl_jobtitle as j, tbl_department as d
			WHERE p.jId = j.jId AND p.dId = d.dId ORDER BY jsId DESC LIMIT 15";
			$result = $this->db->select($query);
			return $result;
		}
       
       
       
	}//main class