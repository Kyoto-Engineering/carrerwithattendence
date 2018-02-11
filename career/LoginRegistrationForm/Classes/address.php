<?php include_once "lib/Database.php"; ?>
<?php include_once "helpers/Format.php"; ?>
<?php include_once "lib/Session.php"; ?>

<?php
	/**
	* 
	*/
	class Address
	{
		
		private $db;
		private $fm;
	public function __construct()
	
		{
			$this->db = new Database();
			$this->fm = new Format();
		}

		public function getDivission(){
			$query  = "SELECT * FROM  tbl_division ORDER BY divId DESC";
			$result = $this->db->select($query);
			return $result; 
		}

		public function getDistrict(){
			$query  = "SELECT * FROM  tbl_district ORDER BY distId DESC";
			$result = $this->db->select($query);
			return $result; 
		}

		public function getThana(){
			$query  = "SELECT * FROM  tbl_thana ORDER BY thId DESC";
			$result = $this->db->select($query);
			return $result; 
		}

		public function getpostName(){
			$query  = "SELECT * FROM  tbl_post ORDER BY postId DESC";
			$result = $this->db->select($query);
			return $result; 
		}

		public function getPCode(){
			$query  = "SELECT * FROM  tbl_pcode ORDER BY codeId DESC";
			$result = $this->db->select($query);
			return $result; 
		}

		public function getsameadd(){
			$query  = "SELECT * FROM  tbl_same ORDER BY id DESC";
			$result = $this->db->select($query);
			return $result;
		}
        public function expInsert($data, $uId){
            $companyName 		 = $this->fm->validation($data['companyName']);
            $designation		 = $this->fm->validation($data['designation']);
            $workingPeriod 		 = $this->fm->validation($data['workingPeriod']);
            $sMonth 		 = $this->fm->validation($data['sMonth']);
            $eMonth 		 = $this->fm->validation($data['eMonth']);
            $status 		 = $this->fm->validation($data['status']);
          
            
            $companyName		 = mysqli_real_escape_string($this->db->link, $companyName);
            $designation		 = mysqli_real_escape_string($this->db->link, $designation);
            $workingPeriod		 = mysqli_real_escape_string($this->db->link, $workingPeriod);
            $sMonth		 = mysqli_real_escape_string($this->db->link, $sMonth);
            $eMonth		 = mysqli_real_escape_string($this->db->link, $eMonth);
            $status		 = mysqli_real_escape_string($this->db->link, $status);
           
           
               $query = "INSERT INTO tbl_workingexperience(userId, companyName, designation, workingPeriod, sMonth, eMonth, status) VALUES('$uId', '$companyName', '$designation', '$workingPeriod','$sMonth', '$eMonth',  '$status')";
               $insert_row = $this->db->insert($query);
               if($insert_row){
                   $msg= "Your Working Experience Added Successfully";
                   return $msg;
               }else{
                    $msg= "Your Working Experience Not Added!!";
                   return $msg;
               }
           
            
        }
        public function overallstat($status , $uId){
            $status		 = mysqli_real_escape_string($this->db->link, $status);

        	 $query = "INSERT INTO tbl_overall(userId, workexp) VALUES('$uId', '$status')";
             $insert_row = $this->db->insert($query);
              if($insert_row){
                   echo "<script>window.location='resume.php'";
               }else{
                    $msg= "Your Working Experience Not Added!!";
                   return $msg;
               } 
        }
		public function addressInsert($uId, $data){
			$flat 		 = $this->fm->validation($data['flat']);
			$holding 	 = $this->fm->validation($data['holding']);
			$building 	 = $this->fm->validation($data['building']);
			$road 		 = $this->fm->validation($data['road']);
			$block 		 = $this->fm->validation($data['block']);
			$area 		 = $this->fm->validation($data['area']);
			
			$divId 		 = $this->fm->validation($data['divId']);
			$distId 	 = $this->fm->validation($data['distId']);
			$thId 		 = $this->fm->validation($data['thId']);
			$postId 	 = $this->fm->validation($data['postId']);
			/*$codeId 	 = $this->fm->validation($data['codeId']);*/

			$flat		 = mysqli_real_escape_string($this->db->link, $flat);
			$holding	 = mysqli_real_escape_string($this->db->link, $holding);
			$building	 = mysqli_real_escape_string($this->db->link, $building);
			$road		 = mysqli_real_escape_string($this->db->link, $road);
			$block		 = mysqli_real_escape_string($this->db->link, $block);
			$area		 = mysqli_real_escape_string($this->db->link, $area);

			$divId		 = mysqli_real_escape_string($this->db->link, $divId);
			$distId		 = mysqli_real_escape_string($this->db->link, $distId);
			$thId		 = mysqli_real_escape_string($this->db->link, $thId);
			$postId		 = mysqli_real_escape_string($this->db->link, $postId);
			

			
				$query ="INSERT INTO tbl_address(userId, flat, holding, building,road, block, area, divId, distId, thId, postId) VALUES ('$uId', '$flat', '$holding', '$building', '$road', '$block', '$area', '$divId', '$distId', '$thId', '$postId')";
				$result = $this->db->insert($query);
				if ($result) {
					//header("Location:permanent_address.php");
					$msg = "<span style = 'color:green'>Your Permanent Address has been recorded</span>";
					return $msg;
				}else{
					$msg = "Your present Address not recorded";
					return $msg;
				}
			

		}


		public function paddressInsert($uId, $data){

			$id 	     = $this->fm->validation($data['id']);
			$flat 		 = $this->fm->validation($data['flat']);
			$holding 	 = $this->fm->validation($data['holding']);
			$building 	 = $this->fm->validation($data['building']);
			$road 		 = $this->fm->validation($data['road']);
			$block 		 = $this->fm->validation($data['block']);
			$area 		 = $this->fm->validation($data['area']);
			
			$divId 		 = $this->fm->validation($data['divId']);
			$distId 	 = $this->fm->validation($data['distId']);
			$thId 		 = $this->fm->validation($data['thId']);
			$postId 	 = $this->fm->validation($data['postId']);
			/*$codeId 	 = $this->fm->validation($data['codeId']);*/

			$id		 	 = mysqli_real_escape_string($this->db->link, $id);
			$flat		 = mysqli_real_escape_string($this->db->link, $flat);
			$holding	 = mysqli_real_escape_string($this->db->link, $holding);
			$building	 = mysqli_real_escape_string($this->db->link, $building);
			$road		 = mysqli_real_escape_string($this->db->link, $road);
			$block		 = mysqli_real_escape_string($this->db->link, $block);
			$area		 = mysqli_real_escape_string($this->db->link, $area);

			$divId		 = mysqli_real_escape_string($this->db->link, $divId);
			$distId		 = mysqli_real_escape_string($this->db->link, $distId);
			$thId		 = mysqli_real_escape_string($this->db->link, $thId);
			$postId		 = mysqli_real_escape_string($this->db->link, $postId);
                
            $squery = "SELECT * FROM tbl_paddress WHERE userId = '$uId' ";
	        	$getData = $this->db->select($squery);
		        if ($getData) {
			    $msg = "<span style='color:red;'>Your Permanent Address Already Added Once By You. You can update Your address!!";
			    return $msg;
		        }
			
			$query = "INSERT INTO tbl_paddress(userId, id,flat, holding, building,road, block, area, divId, distId, thId, postId) VALUES('$uId','$id','$flat', '$holding', '$building','$road', '$block','$area', 'divId', '$distId', '$thId', '$postId')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "<span style = 'color:green'>Your Permanent Address has been recorded</span>";
					return $msg;
				}else{
					$msg = "Your Permanent Address not recorded";
					return $msg;
				}
		}

	public function infoInsert($data, $userId){
			$tInstitution 	= $this->fm->validation($data['tInstitution']);
			$trainingName 	= $this->fm->validation($data['trainingName']);
			$tTopic 		= $this->fm->validation($data['tTopic']);
			$sMonth 		= $this->fm->validation($data['sMonth']);
			$eMonth 		= $this->fm->validation($data['eMonth']);
			$tLenth 		= $this->fm->validation($data['tLenth']);
            $status 		= $this->fm->validation($data['status']);
            
			$tInstitution = mysqli_real_escape_string($this->db->link, $tInstitution);
			$trainingName = mysqli_real_escape_string($this->db->link, $trainingName);
			$tTopic		  = mysqli_real_escape_string($this->db->link, $tTopic);
			$sMonth		  = mysqli_real_escape_string($this->db->link, $sMonth);
			$eMonth		  = mysqli_real_escape_string($this->db->link, $eMonth);
			$tLenth		  = mysqli_real_escape_string($this->db->link, $tLenth);
            $status		  = mysqli_real_escape_string($this->db->link, $status);
            
            
            
            
			if ($tInstitution == "" || $trainingName == "" || $tTopic == ""	|| $tLenth == ""|| $sMonth == "" || $eMonth== "") {
				$msg = "Field Must Not be Empty!!";
				return $msg;
			}else{
				$query = "INSERT INTO tbl_training(userId, tInstitution, trainingName, tTopic, sMonth, eMonth, tLenth, status) VALUES('$userId','$tInstitution', '$trainingName', '$tTopic', '$sMonth', '$eMonth', '$tLenth','$status')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "<span style= 'color:green'><i>Your Training Information Has Been Recorded</i></span>";
					return $msg;
				}else{
					$msg = "Not Inserted";
					return $msg;
				}
			}

		}
	
	
		public function personalInfo($data, $userId){
			
			$perName 		= $this->fm->validation($data['perName']);
			$fName 		= $this->fm->validation($data['fName']);
			$mName  		= $this->fm->validation($data['mName']);
			$sName 		= $this->fm->validation($data['sName']);
		
			$gender 		= $this->fm->validation($data['gender']);
			$nId 		= $this->fm->validation($data['nId']);
			$maritalStatus 	= $this->fm->validation($data['maritalStatus']);

			
			$perName = mysqli_real_escape_string($this->db->link, $perName);
		    $fName  = mysqli_real_escape_string($this->db->link, $fName );
			$mName  = mysqli_real_escape_string($this->db->link, $mName );
			$sName = mysqli_real_escape_string($this->db->link, $sName);
			$gender = mysqli_real_escape_string($this->db->link, $gender);
			$nId = mysqli_real_escape_string($this->db->link, $nId);
			$maritalStatus = mysqli_real_escape_string($this->db->link, $maritalStatus);
            
             $squery = "SELECT * FROM tbl_personalinfo WHERE userId = '$userId' ";
	        	$getData = $this->db->select($squery);
		        if ($getData) {
			    $msg = "<span style='color:red;'>Your Information Already Added Once By You. You can update it";
			    return $msg;
		        }
			if ($perName == "" || $fName == "" || $mName == "" || $sName == "" || $maritalStatus == "" ||  $gender == "" || $nId == "" ) {

				$msg = "Field Must Not be Empty!!";
				return $msg;
			}else{
				$query = "INSERT INTO tbl_personalinfo(userId, perName, fName,mName,sName,gender, nId, maritalStatus) VALUES('$userId','$perName', '$fName','$mName','$sName', '$gender', '$nId', '$maritalStatus')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "Personal Info recorded";
					return $msg;
				}else{
					$msg = "Personal Info not recorded";
					return $msg;
				}
			}


		}

		

	public function portfolio($data, $userId){
			
			 $link		= $this->fm->validation($data['link']);
		     $uId		= $this->fm->validation($data['uId']);
             $password		= $this->fm->validation($data['password']);
             $status		= $this->fm->validation($data['status']);
			
			$link = mysqli_real_escape_string($this->db->link, $link);
			$uId = mysqli_real_escape_string($this->db->link, $uId);
			$password = mysqli_real_escape_string($this->db->link, $password);
			$status = mysqli_real_escape_string($this->db->link, $status);

			if ($link == "" ) {

				$msg = "Field Must Not be Empty!!";
				return $msg;
			}else{
				$query = "INSERT INTO tbl_portfolio(userId, link,uId,password, status) VALUES('$userId','$link','$uId','$password','$status')";
				$result = $this->db->insert($query);
				if ($result) {
					$msg = "Portfolio Added";
					return $msg;
				}else{
					$msg = "Portfolio not Added";
					return $msg;
				}
			}


		}
		
	public function portfoliostatupdate($status, $userId){
		    $status = mysqli_real_escape_string($this->db->link, $status);
         $query="INSERT INTO tbl_portfolio(userId, status) VALUES($userId, $status)";
           $result = $this->db->insert($query);
				if ($result) {
					echo "<script> window.location='resume.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
		}
//upload image
		public function uploadpicture($userId, $file){
			  $permited  = array('jpg', 'jpeg', 'png', 'gif');
			  $file_name = $file['image']['name'];
			  $file_size = $file['image']['size'];
			  $file_temp = $file['image']['tmp_name'];

		      $div            = explode('.', $file_name);
		      $file_ext       = strtolower(end($div));
		      $unique_image   = substr(md5(time()), 0, 10).'.'.$file_ext;
		      $uploaded_image = "admin/uploads/".$unique_image;


		    if ($uploaded_image == "") {
		    	 
		    	 $errmsg = "<span style='color:red'>Browse Your Picture First And Submit</span>";
		    	 return $errmsg;

		    	}elseif ($file_size >1048567) {
			     echo "<span style='color:red'>Image Size should be less then 1MB!</span>";

   			 	} elseif (in_array($file_ext, $permited) === false) {

		     	echo "<span style='color:red'>You can upload only:-".implode(', ', $permited)."</span>";

    			} else {
			    	 move_uploaded_file($file_temp, $uploaded_image);
			    	 $query = "UPDATE tbl_user_reg 
			    	 			SET 
			    	 			image = '$uploaded_image'

			    	 			WHERE regId = '$userId'";
			    	 $update_row = $this->db->update($query);
			    	 if ($update_row) {
			    	 	$msg = "<span>Image Upload complete</span>";
			    	 	return $msg;
			    	 }else{
			    	 	$msg = "<span>Image Upload Not complete</span>";
			    	 	return $msg;
			    	 }
			    	}
		}

		
	
		
		public function uploadresume($userId, $file){


			  $permited  = array('pdf');
			  $file_name = $file['resume']['name'];
			  $file_size = $file['resume']['size'];
			  $file_temp = $file['resume']['tmp_name'];

		      $div           = explode('.', $file_name);
		      $file_ext      = strtolower(end($div));
		      $unique_file   = substr(md5(time()), 0, 10).'.'.$file_ext;
		      $uploaded_file = "admin/Resume/".$unique_file;
                
                $squery = "SELECT * FROM tbl_upload WHERE userId = '$userId'";
		        $getData = $this->db->select($squery);
		        if ($getData) {
		        	$msg = "<span style='color:red'>Resume Already Added Once By You!!</span>";
			        return $msg;
		        }elseif ($uploaded_file == "") {
		    	 
		    	 $errmsg = "Browse Your Resume First And Submit";
		    	 return $errmsg;

		    	}elseif ($file_size >300000) {
			     $msg = "<span style='color:red'>Pdf Size should be not more then 300KB!</span>";
			     return $msg;
   			 	} elseif (in_array($file_ext, $permited) === false) {

		     	$msg = "<span style='color:red'>You can upload only:-".implode(', ', $permited)."</span>";
		     	return $msg;
    			} else {
			    	 move_uploaded_file($file_temp, $uploaded_file);
			    	 $query = "INSERT INTO tbl_upload(userId, resume) VALUES('$userId', '$uploaded_file')";
			    	 $insert_row = $this->db->update($query);
			    	 if ($insert_row) {
			    	 	$msg = "<span style='color:green'>Resume Upload complete</span>";
			    	 	return $msg;
			    	 }else{
			    	 	$msg = "<span style='color:red'>Resume Upload Not complete</span>";
			    	 	return $msg;
			    	 }
			    	}

		}
		
		public function getuseraddressBy($uId){
			$query = "SELECT p.*, d.divName, e.distName, t.thName, b.postName 
			FROM tbl_address as p, tbl_division as d, tbl_district as e, tbl_thana as t, tbl_post as b
			WHERE p.divId= d.divId AND
			      p.distId = e.distId AND
			      p.thId = t.thId AND
			      p.postId = b.postId AND
			      p.userId = '$uId'" ;
			//$query = "SELECT * FROM tbl_school WHERE userId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getpermanentuseraddressBy($uId){
			$query = "SELECT r.*, s.distName, t.thName, b.postName
			 FROM tbl_paddress as r, tbl_district as s, tbl_thana as t, tbl_post as b
			  WHERE r.distId = s.distId AND r.thId = t.thId AND r.postId = b.postId AND r.userId = '$uId'";
			//$query = "SELECT * FROM tbl_paddress WHERE userId = '$uId'";
			$result = $this->db->select($query);
			return $result;
		}
		public function getPersonalInfo($userId){
			$query  = "SELECT * FROM  tbl_personalinfo WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		public function getPortfolio($userId){
			$query  = "SELECT * FROM  tbl_portfolio WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		 public function getTraining($userId){
			$query  = "SELECT * FROM  tbl_training WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}

	 public function getAllExp($userId){
			$query  = "SELECT * FROM  tbl_workingexperience WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		 public function getAllStatExp($userId){
			$query  = "SELECT status FROM  tbl_workingexperience WHERE userId='$userId' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}
		public function getExpperson($userId){
			$query  = "SELECT * FROM  tbl_workingexperience WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		 public function getAllStattraining($userId){
			$query  = "SELECT status FROM  tbl_training WHERE userId='$userId' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}
		public function getAllStatPort($userId){
			$query  = "SELECT status FROM  tbl_portfolio WHERE userId='$userId' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}
		public function getPortperson($userId){
			$query  = "SELECT * FROM  tbl_portfolio WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function getTrainingperson($userId){
			$query  = "SELECT * FROM  tbl_training WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		
		public function editmyInformation($userId){
		    $query  = "SELECT * FROM  tbl_personalinfo WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		
		public function updatepersonalInfo($data , $userId){
		    $perName 		= $this->fm->validation($data['perName']);
		
			
			$dob 			= $this->fm->validation($data['dob']);
			$gender 		= $this->fm->validation($data['gender']);
			$nId 		= $this->fm->validation($data['nId']);
			$maritalStatus 	= $this->fm->validation($data['maritalStatus']);

			
			$perName = mysqli_real_escape_string($this->db->link, $perName);
			
			$dob = mysqli_real_escape_string($this->db->link, $dob);
			$gender = mysqli_real_escape_string($this->db->link, $gender);
			$nId = mysqli_real_escape_string($this->db->link, $nId);
			$maritalStatus = mysqli_real_escape_string($this->db->link, $maritalStatus);

			if ($perName == "" || $dob == "" || $gender == "" || $nId == "" || $maritalStatus == "") {

				$msg = "Field Must Not be Empty!!";
				return $msg;
			}else{
				$query = "UPDATE tbl_personalinfo
				SET 
				
				userId = '$userId',
				perName = '$perName', 
				perEmail = '$perEmail',
				perPhone =  '$perPhone',
				dob =  '$dob',
				gender = '$gender', 
				nId =  '$nId',
				maritalStatus = '$maritalStatus'
				WHERE userId = '$userId'";
				$result = $this->db->update($query);
				if ($result) {
					$msg = "<span style = 'color:green'>Personal Info Updated</span>";
					return $msg;
				}else{
					$msg = "<span style = 'color:red'>Personal Info not Updated</span>";
					return $msg;
				}
			}
		}
		
		public function editPortfolio($userId){
		    $query  = "SELECT * FROM  tbl_portfolio WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}

		public function updatePortfolio($data, $userId){
			
			$link		= $this->fm->validation($data['link']);
		     $uId		= $this->fm->validation($data['uId']);
             $password		= $this->fm->validation($data['password']);
			
			$link = mysqli_real_escape_string($this->db->link, $link);
			$uId = mysqli_real_escape_string($this->db->link, $uId);
			$password = mysqli_real_escape_string($this->db->link, $password);
			

			if ($link == "" ) {

				$msg = "Field Must Not be Empty!!";
				return $msg;
			}else{
				$query = "UPDATE tbl_portfolio
				SET
				 userId = '$userId',
				 link = '$link',
				 uId = '$uId',
				 password = '$password' 
				 WHERE userId='$userId' " ;

				 
				$result = $this->db->update($query);
				if ($result) {
					$msg = "Portfolio Updated";
					return $msg;
				}else{
					$msg = "Portfolio not Updated";
					return $msg;
				}
			}


		}
		public function editmyAddress($userId){
			 $query  = "SELECT * FROM  tbl_address WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		public function addressUpdate($uId, $data){
			$flat 		 = $this->fm->validation($data['flat']);
			$holding 	 = $this->fm->validation($data['holding']);
			$building 	 = $this->fm->validation($data['building']);
			$road 		 = $this->fm->validation($data['road']);
			$block 		 = $this->fm->validation($data['block']);
			$area 		 = $this->fm->validation($data['area']);
			
			$divId 		 = $this->fm->validation($data['divId']);
			$distId 	 = $this->fm->validation($data['distId']);
			$thId 		 = $this->fm->validation($data['thId']);
			$postId 	 = $this->fm->validation($data['postId']);
			/*$codeId 	 = $this->fm->validation($data['codeId']);*/

			$flat		 = mysqli_real_escape_string($this->db->link, $flat);
			$holding	 = mysqli_real_escape_string($this->db->link, $holding);
			$building	 = mysqli_real_escape_string($this->db->link, $building);
			$road	 = mysqli_real_escape_string($this->db->link, $road);
			$block		 = mysqli_real_escape_string($this->db->link, $block);
			$area		 = mysqli_real_escape_string($this->db->link, $area);

			$divId		 = mysqli_real_escape_string($this->db->link, $divId);
			$distId		 = mysqli_real_escape_string($this->db->link, $distId);
			$thId		 = mysqli_real_escape_string($this->db->link, $thId);
			$postId		 = mysqli_real_escape_string($this->db->link, $postId);
			

			
				$query ="UPDATE tbl_address
			SET	userId = '$uId',
				flat = '$flat',
				holding = '$holding',
				road='$road',
				 building = '$building',
				 block = '$block',
				 area = '$area',
				 divId =  '$divId',
				 distId = '$distId', 
				 thId = '$thId',
				 postId ='$postId'
				 WHERE userId='$uId' " ; 

				
				$result = $this->db->update($query);
				if ($result) {
					header("Location:view_address.php");
				}else{
					$msg = "Your present Address not updated";
					return $msg;
				}
			

		}
		public function editmypAddress($userId){
			$query  = "SELECT * FROM  tbl_paddress WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		public function paddressUpdate($uId, $data){
			$flat 		 = $this->fm->validation($data['flat']);
			$holding 	 = $this->fm->validation($data['holding']);
			$building 	 = $this->fm->validation($data['building']);
			$road 		 = $this->fm->validation($data['road']);
			$block 		 = $this->fm->validation($data['block']);
			$area 		 = $this->fm->validation($data['area']);
			
			$divId 		 = $this->fm->validation($data['divId']);
			$distId 	 = $this->fm->validation($data['distId']);
			$thId 		 = $this->fm->validation($data['thId']);
			$postId 	 = $this->fm->validation($data['postId']);
			/*$codeId 	 = $this->fm->validation($data['codeId']);*/

			$flat		 = mysqli_real_escape_string($this->db->link, $flat);
			$holding	 = mysqli_real_escape_string($this->db->link, $holding);
			$building	 = mysqli_real_escape_string($this->db->link, $building);
			$road		 = mysqli_real_escape_string($this->db->link, $road);
			$block		 = mysqli_real_escape_string($this->db->link, $block);
			$area		 = mysqli_real_escape_string($this->db->link, $area);

			$divId		 = mysqli_real_escape_string($this->db->link, $divId);
			$distId		 = mysqli_real_escape_string($this->db->link, $distId);
			$thId		 = mysqli_real_escape_string($this->db->link, $thId);
			$postId		 = mysqli_real_escape_string($this->db->link, $postId);
			

			
				$query ="UPDATE tbl_paddress
			SET	userId = '$uId',
				flat = '$flat',
				holding = '$holding',
				 building = '$building',
				 road='$road',
				 block = '$block',
				 area = '$area',
				 divId =  '$divId',
				 distId = '$distId', 
				 thId = '$thId',
				 postId ='$postId'
				 WHERE userId='$uId' " ; 

				
				$result = $this->db->update($query);
				if ($result) {
					header("Location:view_address.php");
				}else{
					$msg = "Your present Address not updated";
					return $msg;
				}

		}
		public function editAllExp($uId){
			$query="SELECT * FROM tbl_workingexperience WHERE userId='$uId'";
			$result=$this->db->select($query);
			return $result ;
		}
		 public function expUpdate($data, $uId){
            $companyName 		 = $this->fm->validation($data['companyName']);
            $designation		 = $this->fm->validation($data['designation']);
            $workingPeriod 		 = $this->fm->validation($data['workingPeriod']);
          
            
            $companyName		 = mysqli_real_escape_string($this->db->link, $companyName);
            $designation		 = mysqli_real_escape_string($this->db->link, $designation);
            $workingPeriod		 = mysqli_real_escape_string($this->db->link, $workingPeriod);
           
           
               $query = "UPDATE tbl_workingexperience
              SET userId = '$uId', 
               companyName = '$companyName',
                designation = '$designation',
                workingPeriod = '$workingPeriod'
                WHERE userId='$uId' ";

              
               $update_row = $this->db->update($query);
               if($update_row){
                   $msg= "Your Working Experience Updated Successfully";
                   return $msg;
               }else{
                    $msg= "Your Working Experience Not Updated!!";
                   return $msg;
               }
           
            
        }
        
        public function getuserresume($userId){
            $query = "SELECT * FROM tbl_upload WHERE userId = '$userId'";
            $result = $this->db->select($query);
            return $result;
        }
 public function editAllTraining($uId){
			$query="SELECT * FROM tbl_training WHERE userId='$uId'";
			$result=$this->db->select($query);
			return $result ;
		}
		public function trainingUpdate($data, $uId){
			$tInstitution 	= $this->fm->validation($data['tInstitution']);
			$trainingName 	= $this->fm->validation($data['trainingName']);
			$tTopic 		= $this->fm->validation($data['tTopic']);
			$sMonth 		= $this->fm->validation($data['sMonth']);
			$eMonth 		= $this->fm->validation($data['eMonth']);
			$tLenth 		= $this->fm->validation($data['tLenth']);

			$tInstitution = mysqli_real_escape_string($this->db->link, $tInstitution);
			$trainingName = mysqli_real_escape_string($this->db->link, $trainingName);
			$tTopic		  = mysqli_real_escape_string($this->db->link, $tTopic);
			$sMonth 		= mysqli_real_escape_string($this->db->link, $sMonth );
			$eMonth 		= mysqli_real_escape_string($this->db->link, $eMonth);
			$tLenth		  = mysqli_real_escape_string($this->db->link, $tLenth);
            
            
			if ($tInstitution == "" || $trainingName == "" || $tTopic == ""	|| $tLenth == "") {
				$msg = "Field Must Not be Empty!!";
				return $msg;
			}else{
				$query = "UPDATE  tbl_training
				 
				SET tInstitution = '$tInstitution',
				 trainingName = '$trainingName',
				 tTopic =   '$tTopic',
				 sMonth = '$sMonth',
				 eMonth = '$eMonth',
				  tLenth = '$tLenth' WHERE userId = '$uId'" ; 
				
				$result = $this->db->update($query);
				if ($result) {
					$msg = "<span style= 'color:green'><i>Your Training Information Has Been Updated</i></span>";
					return $msg;
				}else{
					$msg = "Not Updated";
					return $msg;
				}
			}

		}
		public function statUpdateHsc($data , $userId){
			$status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_hsc
                   SET status=' $status' WHERE userId='$userId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='hsc.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
            
		}
		public function statUpdateSchool($data , $userId){
        $status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_school
                   SET status=' $status' WHERE userId='$userId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='secondarySchooling.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
            
		}
	public function statUpdate($data , $userId){
        $status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_personalinfo
                   SET status=' $status' WHERE userId='$userId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='basicinfo.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
            
		}
		
		public function addstatUpdate($data , $uId){
        $status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_address
                   SET status=' $status' WHERE userId ='$uId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='permanent_address.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
            
		}
		public function statUpdateGrad($data , $userId){
			$status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_grad
                   SET status=' $status' WHERE userId='$userId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='under_graduate.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
            
		}
	public function statUpdatePostGrad($data , $userId){
			$status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_postgraduate
                   SET status=' $status' WHERE userId='$userId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='under_graduate.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
            
		}
		public function statUpdatevocational($data , $userId){
		$status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_vocational
                   SET status=' $status' WHERE userId='$userId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='education.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
            
		}
		
		public function paddstatUpdate($data , $uId){
		 $status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_paddress
                   SET status=' $status' WHERE userId='$uId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='education.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
		}
		
		public function getInfop($userId){
		    $query = "SELECT * FROM tbl_personalinfo WHERE userId = '$userId'";
		    $result = $this->db->select($query);
		    return $result;
		    
		}
		
		public function getaddStat($uId){
		    $query = "SELECT * FROM tbl_address WHERE userId = '$uId'";
		    $result = $this->db->select($query);
		    return $result;
		    
		}
		
		public function getpaddStat($uId){
		    $query = "SELECT * FROM tbl_paddress WHERE userId = '$uId'";
		    $result = $this->db->select($query);
		    return $result;
		    
		}
	    
	 
	   public function statUpdatePostOther($data , $userId){
			$status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_p_other
                   SET status=' $status' WHERE userId='$userId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='education.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
            
		}
		
		public function workstatUpddate($status, $uId){
		 $status = mysqli_real_escape_string($this->db->link, $status);
         $query="INSERT INTO tbl_workingexperience(userId, status) VALUES('$uId', '1')";
         $result = $this->db->insert($query);
				if ($result) {
					echo "<script> window.location='resume.php'</script>";
				}else{
					$msg = "Not Added";
					return $msg;
				}        
		}
		public function statUpdateExp($data , $uId){
      $status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_workingexperience
                   SET status=' $status' WHERE userId='$uId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='workExperience.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}     
		}
		public function statUpdateOther($data , $userId){
			$status=$this->fm->validation($data['status']);
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="UPDATE tbl_others
                   SET status=' $status' WHERE userId='$userId'";
           $result = $this->db->update($query);
				if ($result) {
					echo "<script> window.location='education.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}        
            
		}
		
		 public function getAllOverall($userId){
	    	$query = "SELECT * FROM tbl_overall WHERE userId = '$userId'";
	    	$result = $this->db->select($query);
	    	return $result;
	    }
	     public function getAllUserOverall($userId){
	    	$query = "SELECT * FROM tbl_overall WHERE userId = '$userId'";
	    	$result = $this->db->select($query);
	    	return $result;
	    }
	    public function statUpdateRef($status, $uId){
        	$status		 = mysqli_real_escape_string($this->db->link, $status);

        	 $query = "INSERT INTO tbl_overall(userId, ref) VALUES('$uId', '$status')";
             $insert_row = $this->db->insert($query);
              if($insert_row){
                   echo "<script>window.location = 'resume.php'";
               }else{
                    $msg= "Your Working Experience Not Added!!";
                   return $msg;
               } 
        }
          public function refstatUpddate($status, $uId){
        	$status		 = mysqli_real_escape_string($this->db->link, $status);

        	 $query = "INSERT INTO tbl_reference(userId, status) VALUES('$uId', '$status')";
             $insert_row = $this->db->insert($query);
              if($insert_row){
                   echo "<script>window.location = 'resume.php'";
               }else{
                    $msg= "Your Working Experience Not Added!!";
                   return $msg;
               } 
        }
         public function statUpdateTraining($status, $userId){
        	$status		 = mysqli_real_escape_string($this->db->link, $status);

        	 $query = "INSERT INTO tbl_overall(userId, training) VALUES('$userId', '$status')";
             $insert_row = $this->db->insert($query);
              if($insert_row){
                   echo "<script>window.location = 'resume.php'";
               }else{
                    $msg= "Your Working Experience Not Added!!";
                   return $msg;
               } 
        }
         public function trainingstatupdate($status, $userId){
            $status		 = mysqli_real_escape_string($this->db->link, $status);
            $query = "INSERT INTO tbl_training(userId, status) VALUES('$userId', '$status')";
            $result = $this->db->insert($query);
            if($result){
                echo "<script>window.location = 'resume.php'</script>";
            }else{
                echo "Not Added";
            }
        }
         public function statUpdatePort($status , $userId){
      
         $status = mysqli_real_escape_string($this->db->link, $status);
         $query="INSERT INTO tbl_overall(userId, port) VALUES('$uId', '$status')";
           $result = $this->db->insert($query);
				if ($result) {
					echo "<script> window.location='resume.php'</script>";
				}else{
					$msg = "Not Updated";
					return $msg;
				}     
		}
		 public function getAllStatRef($userId){
			$query  = "SELECT status FROM  tbl_reference WHERE userId='$userId' LIMIT 1";
			$result = $this->db->select($query);
			return $result;
		}
	public function getRef($userId){
			$query  = "SELECT p.*,  r.relationType, s.specialization 
			 FROM tbl_reference as p,  tbl_relationship as r,tbl_specialization as s WHERE p.relationship = r.id AND p.specialization=s.spId AND userId = '$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		 public function getRefer($userId){
			$query  = "SELECT status FROM  tbl_reference WHERE userId='$userId'";
			$result = $this->db->select($query);
			return $result;
		}
		 
	}//main class
?>