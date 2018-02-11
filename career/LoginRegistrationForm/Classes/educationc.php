<?php include_once "lib/Database.php"; ?>
<?php include_once "helpers/Format.php"; ?>
<?php include_once "lib/Session.php"; ?>

<?php 
/**
* education
*/
class Education
{
	
	private $db;
		private $fm;
	public function __construct()
	
		{
			$this->db = new Database();
			$this->fm = new Format();
		}

	public function getAllgroup(){
		$query = "SELECT * FROM tbl_group ORDER BY gId DESC";
		$result = $this->db->select($query);
		return $result;
	}	

public function sscInsert($data, $userId){
		$name 		 = $this->fm->validation($data['name']);
		$gId 		 = $this->fm->validation($data['gId']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$divId 	     = $this->fm->validation($data['divId']);
		$status 	     = $this->fm->validation($data['status']);

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		$gId		 = mysqli_real_escape_string($this->db->link, $gId);
		$cgpa		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$divId	 	 = mysqli_real_escape_string($this->db->link, $divId);
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);
		if ($name == "" || $gId == "" || $cgpa == "" || $pyearid == ""||$divId == "") {
			$msg = "<span style='color:red;'>Select or Fill All The Data</span>";
			return $msg;
		}
		$squery = "SELECT * FROM tbl_school WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			$msg = "<span style='color:red'>Your SSC Info Already Added By You</span>";
			return $msg;



		}else{
			$query = "INSERT INTO tbl_school(userId, name, gId, cgpa, pyearid, divId, status) VALUES('$userId', '$name', '$gId', '$cgpa', '$pyearid','$divId', '$status')";
			$result = $this->db->insert($query);
			if ($result) {
				echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}
	}

	public function statUpdateSchool($status , $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, ssc) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}

	public function olevelInsert($data, $userId){
		$name 		 = $this->fm->validation($data['name']);
		//$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$board 	     = $this->fm->validation($data['divId']);
		$status 	     = $this->fm->validation($data['status']);
		

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		//$cgpa		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$board	 	 = mysqli_real_escape_string($this->db->link, $board);
        $status	 	 = mysqli_real_escape_string($this->db->link, $status);

		if ($name == "" || $pyearid == ""|| $board == "") {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		$squery = "SELECT * FROM tbl_olevel WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			$msg = "<span style='color:red'>Your O-level Info Already Added By You</span>";
			return $msg;



		}else{
			$query = "INSERT INTO tbl_olevel(userId, name, pyearid, divId,status) VALUES('$userId', '$name',  '$pyearid', '$board','$status')";
			$result = $this->db->insert($query);
			if ($result) {
				echo "<script>window.location = 'oLevel.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}
	}
 public function olevelstatupdate($status , $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, olevel) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}
    
public function vocationalInsert($data, $userId){
		$name 		 = $this->fm->validation($data['name']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$divId 	     = $this->fm->validation($data['divId']);
		$status 	     = $this->fm->validation($data['status']);
		
		

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		$cgpa		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$divId	 	 = mysqli_real_escape_string($this->db->link, $divId);
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		if ($name == "" || $cgpa == "" || $pyearid == ""|| $divId == "") {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		
		$squery = "SELECT * FROM tbl_vocational WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			$msg = "<span style='color:red'>Your vocational Info Already Added By You</span>";
			return $msg;



		}else{
			$query = "INSERT INTO tbl_vocational(userId, name, cgpa, pyearid, divId,status) VALUES('$userId', '$name', '$cgpa', '$pyearid', '$divId','$status')";
			$result = $this->db->insert($query);
			if ($result) {
				echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}
	}
	public function statUpdatevocational($status , $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, vocational) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}


public function hscInsert($data, $userId){
		$name 		 = $this->fm->validation($data['name']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$divId 	     = $this->fm->validation($data['divId']);
		$gId 	     = $this->fm->validation($data['gId']);
		$status 	     = $this->fm->validation($data['status']);
		

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		$cgpa		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$divId	 	 = mysqli_real_escape_string($this->db->link, $divId);
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		if ($name == "" || $cgpa == "" || $pyearid == ""|| $divId == ""||$gId == "") {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		$squery = "SELECT * FROM tbl_hsc WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			$msg = "<span style='color:red'>Your Hsc Info Already Added By You</span>";
			return $msg;



		}else{
			$query = "INSERT INTO tbl_hsc(userId, name, cgpa, pyearid, divId, gId,status) VALUES('$userId', '$name', '$cgpa', '$pyearid', '$divId', '$gId','$status')";
			$result = $this->db->insert($query);
			if ($result) {
				echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}
	}
  
  public function statUpdateHsc($status , $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, hsc) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}
public function diplomaInsert($data, $userId){
		$name 		 = $this->fm->validation($data['name']);
		$id 		 = $this->fm->validation($data['id']);
		//$dId 		 = $this->fm->validation($data['dId']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$divId 	     = $this->fm->validation($data['divId']);
		$status 	     = $this->fm->validation($data['status']);
		

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		$id		 = mysqli_real_escape_string($this->db->link, $id);
		//$dId		 = mysqli_real_escape_string($this->db->link, $dId);
		$cgpa		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		if ($name == "" || $cgpa == "" || $pyearid == ""|| $divId == "" || $id == "") {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		$squery = "SELECT * FROM tbl_diploma WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			$msg = "<span style='color:red'>Your Diploma Info Already Added By You</span>";
			return $msg;



		}else{
			$query = "INSERT INTO tbl_diploma(userId, name, degId, cgpa, pyearid, divId, status) VALUES('$userId', '$name',
			 '$id', '$cgpa', '$pyearid', '$divId', '$status')";
			$result = $this->db->insert($query);
			if ($result) {
				echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}
	}
	
	public function diplomaStatInsert($status, $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, diploma) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}
       public function alevelInsert($data, $userId){
		$name 		 = $this->fm->validation($data['name']);
	
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$board 	     = $this->fm->validation($data['board']);
		$status 	     = $this->fm->validation($data['status']);
		

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$board	 = mysqli_real_escape_string($this->db->link, $board);
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		if ($name == "" || $pyearid == ""|| $board == "") {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		$squery = "SELECT * FROM tbl_alevel WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			$msg = "<span style='color:red'>Your A-level Info Already Added By You</span>";
			return $msg;



		}else{
			$query = "INSERT INTO tbl_alevel(userId, name, pyearid, divid, status) VALUES('$userId', '$name', '$pyearid', '$board', '$status')";
			$result = $this->db->insert($query);
			if ($result) {
				echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}
	} 
		public function alevelStatInsert($status, $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, alevel) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}

public function undergraduateInsert($data, $userId){
		$uId 		 = $this->fm->validation($data['uId']);
		$deid = $this->fm->validation($data['deid']);
		$studydeptId = $this->fm->validation($data['studydeptId']);
		$minor = $this->fm->validation($data['minor']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$status 	 = $this->fm->validation($data['status']);
		
		$uId 		 = mysqli_real_escape_string($this->db->link, $uId);
		$deid = mysqli_real_escape_string($this->db->link, $deid);
		$studydeptId = mysqli_real_escape_string($this->db->link, $studydeptId);
		$minor = mysqli_real_escape_string($this->db->link, $minor);
		$cgpa 		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$status	 = mysqli_real_escape_string($this->db->link, $status);
		
		if ($uId == "" || $studydeptId == "" ||  $cgpa == "" || $pyearid == "" ) {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		$squery = "SELECT * FROM tbl_grad WHERE userId = '$userId'";
		$getData = $this->db->select($squery);
		if ($getData) {
			$msg = "<span style='color:red'>Your Undergraduate Info Already Added By You</span>";
			return $msg;
		}else{
			$query = "INSERT INTO tbl_grad(userId, uId,deid ,studydeptId,minor, cgpa, pyearid,status) VALUES('$userId', '$uId','$deid', '$studydeptId', '$minor','$cgpa', '$pyearid','$status')";
			$result = $this->db->insert($query);
			if ($result) {
					echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}
	}
	public function statUpdateGrad($status , $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, ugard) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}
public function postgraduateInsert($data, $userId){
		$uId 		 = $this->fm->validation($data['uId']);
		$deid  	 = $this->fm->validation($data['deid']);
		$studydeptId = $this->fm->validation($data['studydeptId']);
		$minor = $this->fm->validation($data['minor']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		

		$uId 		 = mysqli_real_escape_string($this->db->link, $uId);
		$deid	 = mysqli_real_escape_string($this->db->link, $deid);
		$studydeptId = mysqli_real_escape_string($this->db->link, $studydeptId);
		$minor = mysqli_real_escape_string($this->db->link, $minor);
		$cgpa 		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
	

		if ($uId == "" || $deid == "" ||  $studydeptId == "" || $cgpa == "" || $pyearid == "" ) {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		else{
			$query = "INSERT INTO tbl_postgraduate(userId, uId, deid, studydeptId,minor, cgpa, pyearid) VALUES('$userId', '$uId', '$deid','$studydeptId','$minor', '$cgpa', '$pyearid' )";
			$result = $this->db->insert($query);
			if ($result) {
					echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}

	}
		public function statUpdatePostGrad($status , $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, postgrad) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}
    
    public function editmyschool($userId){
		 $query  = "SELECT * FROM  tbl_school WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
	}
	public function sscUpdate($data, $userId){
		$name 		 = $this->fm->validation($data['name']);
		$gId 		 = $this->fm->validation($data['gId']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$divId 	     = $this->fm->validation($data['divId']);
		

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		$gId		 = mysqli_real_escape_string($this->db->link, $gId);
		$cgpa		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$divId	 	 = mysqli_real_escape_string($this->db->link, $divId);

		if ($name == "" || $gId == "" || $cgpa == "" || $pyearid == ""||$divId == "") {
			$msg = "Select or Fill All The Data";
			return $msg;
		}else{
			$query = "UPDATE tbl_school 
			SET 
		    name = '$name',
		    gId = '$gId',
		    cgpa ='$cgpa',
		    pyearid ='$pyearid',
		    divId = '$divId'
		     WHERE userId = '$userId'" ;
		       
			$result = $this->db->update($query);
			if ($result) {
				echo "<script>window.location = 'view_education_detail.php'</script>";
			}else{
				$msg = "Not updated";
				return $msg;
			}
		}


	}
	public function editmyhsc($userId){
		 $query  = "SELECT * FROM  tbl_hsc WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;

	}
	public function hscUpdate($data, $userId){
        $name 		 = $this->fm->validation($data['name']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$divId 	     = $this->fm->validation($data['divId']);
		$gId 	     = $this->fm->validation($data['gId']);
		

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		$cgpa		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$divId	 	 = mysqli_real_escape_string($this->db->link, $divId);
		$gId	 	 = mysqli_real_escape_string($this->db->link, $gId);

		if ($name == "" || $cgpa == "" || $pyearid == ""|| $divId == ""||$gId == "") {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		else{
			$query = "UPDATE tbl_hsc
                      SET  
                      name ='$name', 
                       cgpa='$cgpa', 
                        pyearid='$pyearid', 
                        divId='$divId',  
                        gId=  '$gId' 
                        WHERE userId='$userId'";
                       
			$result = $this->db->update($query);
			if ($result) {
				echo "<script>window.location = 'view_education_detail.php'</script>";
			}else{
				$msg = "Not updated";
				return $msg;
			}
		}
	}
	public function editmygrad($userId){
		 $query  = "SELECT * FROM  tbl_grad WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;

	}
	public function undergraduateUpdate($data, $userId){
		$uId 		 = $this->fm->validation($data['uId']);
		$studydeptId = $this->fm->validation($data['studydeptId']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		

		$uId 		 = mysqli_real_escape_string($this->db->link, $uId);
		$studydeptId = mysqli_real_escape_string($this->db->link, $studydeptId);
		$cgpa 		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		

		if ($uId == "" || $studydeptId == "" || $cgpa == "" || $pyearid == "" ) {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		


		else{
			$query = "UPDATE tbl_grad
			SET
			uId = '$uId',
			studydeptId ='$studydeptId',
			cgpa =  '$cgpa', 
			pyearid =  '$pyearid'
			WHERE userId = '$userId' " ;

			
			$result = $this->db->update($query);
			if ($result) {
					echo "<script>window.location = 'view_education_detail.php'</script>";
			}else{
				$msg = "Not Updated";
				return $msg;
			}
		}

	}
	
	public function editmypostgrad($userId){
		 $query  = "SELECT * FROM  tbl_postgraduate WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;

	}
	public function postgraduateUpdate($data, $userId){
		$uId 		 = $this->fm->validation($data['uId']);
		$studydeptId = $this->fm->validation($data['studydeptId']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		

		$uId 		 = mysqli_real_escape_string($this->db->link, $uId);
		$studydeptId = mysqli_real_escape_string($this->db->link, $studydeptId);
		$cgpa 		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		

		if ($uId == "" || $studydeptId == "" || $cgpa == "" || $pyearid == "" ) {
			$msg = "Select or Fill All The Data";
			return $msg;
		}
		


		else{
			$query = "UPDATE tbl_postgraduate
			SET
			uId = '$uId',
			studydeptId ='$studydeptId',
			cgpa =  '$cgpa', 
			pyearid =  '$pyearid'
			WHERE userId = '$userId' " ;

			
			$result = $this->db->update($query);
			if ($result) {
					echo "<script>window.location = 'view_education_detail.php'</script>";
			}else{
				$msg = "Not Updated";
				return $msg;
			}
		}

	}

   public function otherInsert($data, $userId){
	
		$name        =$this->fm->validation($data['name']);
		$deid        =$this->fm->validation($data['deid']);
		$studydeptId = $this->fm->validation($data['studydeptId']);
		$minor = $this->fm->validation($data['minor']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$status 	 = $this->fm->validation($data['status']);
		

		
		
		$name 	     = mysqli_real_escape_string($this->db->link, $name);
		$deid 	     = mysqli_real_escape_string($this->db->link, $deid);
		$studydeptId = mysqli_real_escape_string($this->db->link, $studydeptId);
		$minor = mysqli_real_escape_string($this->db->link, $minor);
		$cgpa 		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$status 	 = mysqli_real_escape_string($this->db->link, $status );

		if ( $name == "" || $deid == "" || $studydeptId == "" ||  $cgpa == "" || $pyearid == "" ) {
			$msg = "Select or Fill All The Data";
			return $msg;
		}else{
			$query = "INSERT INTO tbl_others(userId,  name,deid, studydeptId, minor, cgpa, pyearid,status) VALUES('$userId',  '$name', '$deid','$studydeptId', '$minor' ,'$cgpa', '$pyearid','$status')";
			$result = $this->db->insert($query);
			if ($result) {
					echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}

	}
	public function statUpdateOther($status , $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, otherUgard) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}

	public function diplomaUpdate($data, $userId){
        $name 		 = $this->fm->validation($data['name']);
		$degId 		 = $this->fm->validation($data['degId']);
		
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$divId 	     = $this->fm->validation($data['divId']);
		

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		$degId		 = mysqli_real_escape_string($this->db->link, $degId);
		
		$cgpa		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$divId	 	 = mysqli_real_escape_string($this->db->link, $divId);

		if ($name == "" || $cgpa == "" || $pyearid == ""|| $divId == "" || $degId == "" ) {
			$msg = "Select or Fill All The Data";
			return $msg;
		}else{
			$query = "UPDATE tbl_diploma
			SET userId = '$userId',
			    name = '$name',
			    degId = '$degId',
			   
			    cgpa = '$cgpa',
			    pyearid = '$pyearid',
			    divId = '$divId' WHERE userId = '$userId'" ;

			$result = $this->db->update($query);
			if ($result) {
				echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Updated";
				return $msg;
			}
		}

	}
public function editmyvocational($userId){
		$query  = "SELECT * FROM   tbl_vocational WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
	}
	public function vocationalUpdate($data, $userId){
		$name 		 = $this->fm->validation($data['name']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$divId 	     = $this->fm->validation($data['divId']);
		

		$name		 = mysqli_real_escape_string($this->db->link, $name);
		$cgpa		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$divId	 	 = mysqli_real_escape_string($this->db->link, $divId);

		if ($name == "" || $cgpa == "" || $pyearid == ""|| $divId == "") {
			$msg = "Select or Fill All The Data";
			return $msg;
		}else{
			$query = "UPDATE tbl_vocational
		SET	userId = '$userId',
			name = '$name',
			cgpa = '$cgpa', 
			pyearid = '$cgpa', 
			divId = '$divId' 
			WHERE userId = '$userId'" ;
			
			$result = $this->db->update($query);
			if ($result) {
				echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Updated";
				return $msg;
			}
		}
	}
	public function postotherInsert($data, $userId){
	
		$name        =$this->fm->validation($data['name']);
		$deid       =$this->fm->validation($data['deid']);

		$studydeptId = $this->fm->validation($data['studydeptId']);
		$minor = $this->fm->validation($data['minor']);
		$cgpa 		 = $this->fm->validation($data['cgpa']);
		$pyearid 	 = $this->fm->validation($data['pyearid']);
		$status 	 = $this->fm->validation($data['status']);
		
		

		
		
		$name 	     = mysqli_real_escape_string($this->db->link, $name);
		$deid 	     = mysqli_real_escape_string($this->db->link, $deid);
		$studydeptId = mysqli_real_escape_string($this->db->link, $studydeptId);
		$minor = mysqli_real_escape_string($this->db->link, $minor);
		$cgpa 		 = mysqli_real_escape_string($this->db->link, $cgpa);
		$pyearid	 = mysqli_real_escape_string($this->db->link, $pyearid);
		$status	 = mysqli_real_escape_string($this->db->link, $status);
		

		if ( $name == "" || $deid =="" || $studydeptId == "" ||  $cgpa == "" || $pyearid == "" ) {
			$msg = "Select or Fill All The Data";
			return $msg;
		}else{
			$query = "INSERT INTO tbl_p_other(userId,  name,deid , studydeptId, minor, cgpa, pyearid,status) VALUES('$userId',  '$name','$deid', '$studydeptId', '$minor' ,'$cgpa', '$pyearid','$status')";
			$result = $this->db->insert($query);
			if ($result) {
					echo "<script>window.location = 'education.php'</script>";
			}else{
				$msg = "Not Insert";
				return $msg;
			}
		}

	}
		public function statUpdatePostOther($status , $userId){
		$status	 	 = mysqli_real_escape_string($this->db->link, $status);

		$query = "INSERT INTO tbl_overall(userId, otherPgard) VALUES('$userId', '$status')";
		$result = $this->db->insert($query);
		if ($result) {
			echo "<script>window.location = 'education.php'</script>";
		}else{
			$msg = "Not Insert";
			return $msg;
		}
	}

   
	
	
}//main class
?>