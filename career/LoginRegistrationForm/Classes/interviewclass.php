<?php include_once "../lib/Database.php"; ?>
<?php include_once "../helpers/Format.php"; ?>
<?php include_once "../lib/Session.php"; ?>
<?php
/**
* 
*/
class Interview
{
		private $db;
		private $fm;

		public function __construct()
	
		{
			$this->db = new Database();
			$this->fm = new Format();
		}	

		public function createBoardname($data){
			$boardname = $this->fm->validation($data['boardname']);

			$boardname = mysqli_real_escape_string($this->db->link, $boardname);

			if ($boardname == "") {
				$msg = "<span style='color:red'>Please Insert Board Name...</span>";
				return $msg;
			}else{

				$query = "INSERT INTO tbl_boardname(boardname) VALUES ('$boardname')";
				$result = $this->db->insert($query);
				if($result){
					$msg = "<span style='color:green'>Board Name Has Been Listed</span>";
					return $msg;
				}else{
					$msg = "<span style='color:red'>Board Name Has Been not Listed</span>";
					return $msg;
				}
			}
		}

		public function getAllBoardname(){
			$query = "SELECT * FROM tbl_boardname";
			$result = $this->db->select($query);
			return $result;
		}

		public function getAllname($id){
			$query = "SELECT * FROM tbl_iboard WHERE bId = '$id'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getAllBname($id){
			$query = "SELECT * FROM tbl_iboard WHERE bId = '$id' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}
		 public function assignDatetoBoard($data){
		 	$interviewdate = $this->fm->validation($data['interviewdate']);
		 	
		 	$bId = $this->fm->validation($data['bId']);

		 	$interviewdate = mysqli_real_escape_string($this->db->link, $interviewdate);
		 	
		 	$bId = mysqli_real_escape_string($this->db->link, $bId);

		 	if ($interviewdate == "") {
		 		$msg = "Assign A Date";
		 		return $msg;
		 	}else{
		 		$query = "INSERT INTO tbl_assesment(bId, iDate) VALUES('$bId', '$interviewdate')";
		 		$insert = $this->db->insert($query);
		 		if ($insert) {
		 			$msg = "This Board has a schedule";
		 			return $msg;
		 		}else{
		 			$msg = "This Board has not a schedule";
		 			return $msg;
		 		}
		 	}
		 }

		 public function getAlldate(){
		 	$query = "SELECT * FROM tbl_interview ORDER BY interviewdate DESC";
		 	$result = $this->db->select($query);
		 	return $result;
		 }

		 public function getBoardname(){
		 	$query = "SELECT p.*, c.boardname
		 	FROM tbl_assesment as p,  tbl_boardname as c
		 	WHERE p.bId = c.id";
		 	$result = $this->db->select($query);
		 	return $result;
		 }
}
?>