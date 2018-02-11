<?php include_once "../lib/Database.php"; ?>
<?php include_once "../helpers/Format.php"; ?>
<?php include_once "../lib/Session.php"; ?>

<?php
	/**
	* 
	*/
	class attendenceInsert
	{
		private $db;
		private $fm;

		public function __construct()
	
		{
			$this->db = new Database();
			$this->fm = new Format();
		}	


		public function insertph($data){
			$date = $this->fm->validation($data['date']);
			$reason = $this->fm->validation($data['reason']);
			$day = $this->fm->validation($data['day']);
			$type = $this->fm->validation($data['type']);

			$date = mysqli_real_escape_string($this->db->link, $date);
			$reason = mysqli_real_escape_string($this->db->link, $reason);
			$day = mysqli_real_escape_string($this->db->link, $day);
			$type = mysqli_real_escape_string($this->db->link, $type);

			if ($date== "" || $reason == "" || $day == "" || $type == "" ) {
					$msg = "<span style='color:red'>Field Is Empty!!</span>";
					return $msg;
			}else{
				$query = "INSERT INTO tbl_ph(datee, reason, day, type) VALUES('$date', '$reason', '$day', '$type')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "<span style='color:green'>PH Created Successfully</span>";
					return $msg;
				}else{
					$msg = "<span style='color:red'>PH Not Created Successfully</span>";
					return $msg;
				}
			}
}
			public function insertip($data, $date, $time){

				$ip = $this->fm->validation($data['ip']);
				$ip = mysqli_real_escape_string($this->db->link, $ip);

			if ($ip == "") {
			$msg = "<span style='color:red'>Field Is Empty!!</span>";
			return $msg;

			}else{
				$query = "INSERT INTO tbl_approveip(datee, timee, ip) VALUES('$date', '$time', '$ip')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "<span style='color:green'>IP inserted Successfully</span>";
					return $msg;
				}else{
					$msg = "<span style='color:red'>IP not Successfully</span>";
					return $msg;
				}

			}
		}

		public function getapproveip(){
			$query = "SELECT * FROM tbl_approveip ORDER BY id DESC";
			$res = $this->db->select($query);
			return $res;
		}

		public function getphdate(){
			$query = "SELECT * FROM tbl_ph ORDER BY datee DESC";
			$res = $this->db->select($query);
			return $res;
		}

		public function getgradesheet(){
			$query = "SELECT * FROM tbl_egrade";
			$res = $this->db->select($query);
			return $res;	
		}

		public function getgradelist(){
			$query = "SELECT * FROM tbl_egrade";
			$res = $this->db->select($query);
			return $res;
		}

		public function addgrade($grade, $uId){
			$grade = mysqli_real_escape_string($this->db->link, $grade);
			if ($grade == "") {
					$msg = "<span style='color:red'>grade Not Select</span>";
					return $msg;
			}else{

						$query = "UPDATE tbl_employee SET grade = '$grade' WHERE userId = '$uId'";
						$result = $this->db->update($query);
						if ($result) {
								$msg = "<span style='color:green'>Grade Assigned</span>";
								return $msg;
						}else{
						$msg = "<span style='color:red'>grade Not Select</span>";
						return $msg;
						}
			}
					}

	public function getestatus(){
		$query = "SELECT * FROM tbl_estatus";
		$res = $this->db->select($query);
		return $res;
	}

	public function insertestat($data){
			$estat = $this->fm->validation($data['estat']);
			$estat = mysqli_real_escape_string($this->db->link, $estat);
			if ($estat == "") {
					$msg = "<span style='color:red'>Employee Status Not Selected</span>";
					return $msg;
			}else{

						$query = "INSERT INTO tbl_estatus(estat) VALUES('$estat')";
						$result = $this->db->insert($query);
						if ($result) {
								$msg = "<span style='color:green'>Status Created</span>";
								return $msg;
						}else{
						$msg = "<span style='color:red'>Status Created</span>";
						return $msg;
						}
			}
	}

	public function updatestatus($data, $uId){
			$estat = $this->fm->validation($data['estat']);
			$estat = mysqli_real_escape_string($this->db->link, $estat);
			if ($estat == "") {
					$msg = "<span style='color:red'>Employee Status Not Selected</span>";
					return $msg;
			}else{

						$query = "UPDATE tbl_employee SET employeestat = '$estat' WHERE userId = '$uId'";
						$result = $this->db->update($query);
						if ($result) {
								$msg = "<span style='color:green'>Status Update</span>";
								return $msg;
						}else{
						$msg = "<span style='color:red'>grade Not Select</span>";
						return $msg;
						}
			}
			}
	

	public function insertstatus($data, $uId, $date){
			$estat = $this->fm->validation($data['estat']);
			$estat = mysqli_real_escape_string($this->db->link, $estat);
			if ($estat == "") {
					$msg = "<span style='color:red'>Employee Status Not Selected</span>";
					return $msg;
			}else{

						$query = "INSERT INTO tbl_emrecord(userId, estat, adate) VALUES( '$uId','$estat', '$date')";
						$result = $this->db->insert($query);
						if ($result) {
								$msg = "<span style='color:green'>Status Created</span>";
								return $msg;
						}else{
						$msg = "<span style='color:red'>Status Created</span>";
						return $msg;
						}
			}
	}

	public function insertofficeSchedule($data, $uId, $date){
			$defultInTime = $this->fm->validation($data['defultInTime']);
			$defultOuttime = $this->fm->validation($data['defultOuttime']);
			$defultInTime = mysqli_real_escape_string($this->db->link, $defultInTime);
			$defultOuttime = mysqli_real_escape_string($this->db->link, $defultOuttime);

			if ($defultInTime == "" || $defultOuttime == "") {
					$msg = "<span style='color:red'>Employee Status Not Selected</span>";
					return $msg;
			}else{

						$query = "INSERT INTO tbl_timerecord(userId, defTimein, defTimeOut, adate) VALUES( '$uId',  '$defultInTime', '$defultOuttime', '$date')";
						$result = $this->db->insert($query);
						if ($result) {
								$msg = "<span style='color:green'>Status Created</span>";
								return $msg;
						}else{
						$msg = "<span style='color:red'>Status Created</span>";
						return $msg;
						}
			}

	}

	public function getemployeestat($uId){
		$query = "SELECT * FROM tbl_employee WHERE userId = '$uId'";
		$res = $this->db->select($query);
		return $res;
	}

}//main class