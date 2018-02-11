<?php include_once "inc/header.php";?>
<?php include_once "Classes/cvdrop.php";?>
<?php
      $curri = new Curriculum(); 
?>

<?php
/*
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $usercv = $curri->userLogin($_POST);
    }
*/
?> 

        <div class="w3-bar">
            <a href="index.php" class="w3-bar-item"> Home </a>
            <a href="basicinfo.php" class="w3-bar-item"> Basic Info</a> <!-- Add #toregister --> 
            <a href="personalInfo.php" class="w3-bar-item"> Personal Info </a>
            <a href="cv.php" class="w3-bar-item"> Educational Details </a>
            <a href="professionalTraining.php" class="w3-bar-item"> Professional Training </a>

        </div> <!-- added by Tauhidul Islam-->

<div class="container back-pic">
	<div class="row">
	
	
			
			<div class="education">
			<form action="" method="post">
				
                <div class="col-md-4">    
                <h2>SSC Level</h2>           
                                <p> 
                                     <label for="sel1">Division</label>
                                        <select class="form-control" id="sellect" name="divId">
                                          <option>Select Division Name</option>
                                           <?php
                                          	$getDiv = $curri->getDivission();
                                          	if ($getDiv) {
                                          		while ($result = $getDiv->fetch_assoc()) {
                                          ?>
                                           <option value="<?php echo $result['divId'];?>" ><?php echo $result['divName'];?></option>	
                                        	<?php } } ?>  	
                                        </select>
                                        
                                       
                                    <br>
                                </p>
                                 <p> 
                                     <label for="sel1">Group</label>
                                        <select class="form-control" id="sellect" name="gId">
                                          <option>Select Group Name</option>
                                          <?php
                                          	$getgrp = $curri->getGroup();
                                          	if ($getgrp) {
                                          		while ($result = $getgrp->fetch_assoc()) {
                                          ?>
                                          
                                          <option value="<?php echo $result['gId'];?>" ><?php echo $result['GName'];?></option>
                                        <?php } } ?>
                                        </select>
                                    <br>
                                </p>
                                <p> 
                                     <label for="sel1">Passing Year</label>
                                        <select class="form-control" id="sellect" name="pyearid">
                                          <option>Select Passing Year</option>
                                          <?php
                                          	$getyr = $curri->getYear();
                                          	if ($getyr) {
                                          		while ($result = $getyr->fetch_assoc()) {
                                          ?>
                                          
                                           <option value="<?php echo $result['pyearid'];?>" ><?php echo $result['pyear'];?></option>
                                        <?php } } ?>
                                        </select>
                                    <br>
                                </p>
                                <p> 
                                     <label for="sel1">GPA</label>
                                        <select class="form-control" id="sellect" name="gpaId">
                                          <option>Select Your GPA</option>
                                          <?php
                                          	$getgp = $curri->getGpa();
                                          	if ($getgp) {
                                          		while ($result = $getgp->fetch_assoc()) {
                                          ?>
                                          
                                          <option value="<?php echo $result['gpaId'];?>" ><?php echo $result['gpa'];?></option>
                                        <?php } } ?>
                                        
                                        </select>
                                   
                                </p>
                              </div>
                                <!--school level-->
                              <div class="col-md-4">
                                
                                <h2>Hsc/Diploma Level</h2>
                                <p> 
                                     <label for="sel1">Division</label>
                                        <select class="form-control" id="sellect" name="">
                                          <option>Select Division Name</option>
                                          <?php
                                          	$getDiv = $curri->getDivission();
                                          	if ($getDiv) {
                                          		while ($result = $getDiv->fetch_assoc()) {
                                          ?>
                                            <option value="<?php echo $result['divId'];?>" ><?php echo $result['divName'];?></option>	
                                        	<?php } } ?>  	
                                        </select>
                                    <br>
                                </p>
                                <p> 
                                     <label for="sel1">Group</label>
                                        <select class="form-control" id="sellect" name="gId">
                                          <option>Select Group Name</option>
                                          <?php
                                          	$getgrp = $curri->getGroup();
                                          	if ($getgrp) {
                                          		while ($result = $getgrp->fetch_assoc()) {
                                          ?>
                                          
                                          <option value="<?php echo $result['gId'];?>" ><?php echo $result['GName'];?></option>
                                        <?php } } ?>
                                        </select>
                                    <br>
                                </p>
                                 <p> 
                                     <label for="sel1">Exam Name</label>
                                        <select class="form-control" id="sellect" name="">
                                          <option>Select Exam Name</option>
                                          
                                          
                                          <option value="<>" ><></option>
                                        
                                        </select>
                                    <br>
                                </p>
                                 <p> 
                                     <label for="sel1">Passing Year</label>
                                        <select class="form-control" id="sellect" name="pyearid">
                                          <option>Select Passing Year</option>
                                          <?php
                                          	$getyr = $curri->getYear();
                                          	if ($getyr) {
                                          		while ($result = $getyr->fetch_assoc()) {
                                          ?>
                                          
                                           <option value="<?php echo $result['pyearid'];?>" ><?php echo $result['pyear'];?></option>
                                        <?php } } ?>
                                        </select>
                                    <br>
                                </p>
                                 <p> 
                                     <label for="sel1">GPA</label>
                                        <select class="form-control" id="sellect" name="gpaId">
                                          <option>Select Your GPA</option>
                                          <?php
                                          	$getgp = $curri->getGpa();
                                          	if ($getgp) {
                                          		while ($result = $getgp->fetch_assoc()) {
                                          ?>
                                          
                                          <option value="<?php echo $result['gpaId'];?>" ><?php echo $result['gpa'];?></option>
                                        <?php } } ?>
                                        
                                        </select>
                               
                                </p>
                                </div>
                                <div class="col-md-4">
                                 
                                	<h2>Highest Education Level</h2>
                                
                                	<p> 
                            <label for="sel1">Institute</label>
                                        <select class="form-control" id="sellect" name="uId">
                                          <option>Select Institute Name</option>
                                          
                                          <?php
                                          	$getUni = $curri->getVersity();
                                          	if ($getUni) {
                                          		while ($result = $getUni->fetch_assoc()) {
                                          ?>
                                          <option value="<?php echo $result['uId'];?>" ><?php echo $result['uName'];?></option>
                                        <?php } } ?>  	
                                        </select>
                                    <br>
                                </p>
                                <br>
                                <p> 
                                     <label for="sel1">Division</label>
                                        <select class="form-control" id="sellect" name="divId">
                                          <option>Select Division Name</option>
                                          <?php
                                          	$getDiv = $curri->getDivission();
                                          	if ($getDiv) {
                                          		while ($result = $getDiv->fetch_assoc()) {
                                          ?>
                                            <option value="<?php echo $result['divId'];?>" ><?php echo $result['divName'];?></option>	
                                        	<?php } } ?>  	
                                        </select>
                                    <br>
                                </p>
                                 <p> 
                                     <label for="sel1">Degree</label>
                                        <select class="form-control" id="sellect" name="degId">
                                          <option>Select Degree Name</option>
                                         <?php
                                          	$getDeg = $curri->getDegree();
                                          	if ($getDeg) {
                                          		while ($result = $getDeg->fetch_assoc()) {
                                          ?>
                                            <option value="<?php echo $result['degId'];?>" ><?php echo $result['degreeName'];?></option>	
                                        	<?php } } ?>  	
                                        
                                        </select>
                                    <br>
                                </p>
                                 <p>

                                    <label for="passwordsignup" class="uname">Specialization</label>
                                        <select class="form-control" id="sellect" name="spId">
                                            <option>Specialization</option>
                                             <?php
                                                $getsp = $curri->getspecilization();
                                                if ($getsp) {
                                                    while ($value = $getsp->fetch_assoc()) {
                                               
                                                 
                                                  ?>
                                              <option value="<?php echo $value['spId'];?>"><?php echo $value['specialization'];?></option>
                                            <?php } } ?>

                                            </select>
                                </p>
                                 
                                <p> 
                                     <label for="sel1">Passing Year</label>
                                        <select class="form-control" id="sellect" name="pyearid">
                                          <option>Select Passing Year</option>
                                          <?php
                                          	$getyr = $curri->getYear();
                                          	if ($getyr) {
                                          		while ($result = $getyr->fetch_assoc()) {
                                          ?>
                                          
                                           <option value="<?php echo $result['pyearid'];?>" ><?php echo $result['pyear'];?></option>
                                        <?php } } ?>
                                        </select>
                                    <br>
                                </p>
                                <p> 
                                     <label for="sel1">CGPA</label>
                                        <select class="form-control" id="sellect" name="cgpaid">
                                         <option>Select Your CGPA</option>
                                        <?php
                                          	$getcg = $curri->getCgpa();
                                          	if ($getcg) {
                                          		while ($result = $getcg->fetch_assoc()) {
                                          ?>
                                         
                                          
                                        <option value="<?php echo $result['cgpaid'];?>" ><?php echo $result['cgpa'];?></option>
                                        <?php } } ?>
                                        </select>
                                    <br>
                                </p>
                                <p class="signin button"> 
                                    <input type="submit" name= "submit" value="Submit"/> 
                                </p>
                                <p class="change_link">  
                                   
                                    <a href="index.php" class="to_register"> Go To Home </a>
                                </p>
                                </div>
                             </form>
			</div>
		
	</div>

</div>
<?php include_once "inc/footer.php";?>