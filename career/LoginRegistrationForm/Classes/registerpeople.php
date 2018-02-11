<?php 
	 include_once '../lib/database.php';
	 include_once '../helpers/format.php';
?>

<?php
/**
* Adminlogin class
*/
class Registerd
{
	private $db;
	private $fm;
	public function __construct()
	{
		$this->db = new Database();
		$this->fm = new Format();
	}

	public function getAllpeople(){
		


		$query = "SELECT p.*, s.specialization
				FROM tbl_user_reg as p, tbl_specialization as s
				WHERE p.spId = s.spId ORDER BY regId DESC limit 10";

		
	
		$result= $this->db->select($query);
		return $result;
	}
	
}
?>