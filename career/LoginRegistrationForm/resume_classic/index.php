<?php 
    include '../lib/Session.php' ;
     Session::init();
     include '../lib/Database.php';
     include '../helpers/Format.php';
     include '../classes/cvMaker.php';
     
     ?>

<?php
  $cv = new Module();
    $login =Session::get("login");
    if ($login == false) {
      echo "<script>window.location='../login.php'</script>";
    }
  ?>
<?php
// $userId = Session::get("userId");

?>

<?php
            if(!isset($_GET['user']) || $_GET['user']==NUll){
            echo "<script>window.location = '../index.php';</script>";
            }else{
                $userId = preg_replace('/[^-a-zA-Z0-9_]/', '', $_GET['user']);
            }
?>

<!DOCTYPE html>
<html>
<head>
	<title>Resume Template</title>

	<meta name="viewport" content="width=device-width"/>
	<meta name="description" content="The Curriculum Vitae of Joe Bloggs."/>
	<meta charset="UTF-8"> 

	<link href="css/bootstrap.min.css" rel="stylesheet" >
	<link type="text/css" rel="stylesheet" href="style.css">
	<link href='http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300' rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body id="top">
<!-- header segment end-->


	<div id="cv" class="instaFade">
	    
	<?php 
			$getinfo = $cv->getuserInfo($userId);
			if ($getinfo) {
				while($data = $getinfo->fetch_assoc()){?>
		<div class="mainDetails">
			<div id="headshot" class="quickFade">
				<img src="../<?php echo $data['image'];?>" alt="No Image Provided"/>
			</div>
		
			<div id="name">
				<h1 class="quickFade delayTwo"><?php echo $data['userName'];?></h1>
				<!-- <h2 class="quickFade delayThree">Job Title</h2> -->
				<table class="subDetails">
					<tr>
						<td><span class="glyphicon glyphicon-envelope"></span> <?php echo $data['email'];?></td>
					</tr>
					<tr>
						<td><span class="glyphicon glyphicon-phone"></span><?php echo $data['phone'];?></td>

					</tr>
						<?php } } ?>
					<?php 
					$getadd = $cv->getuseradd($userId);
					if ($getadd) {
						while($data = $getadd->fetch_assoc()){?>
					<tr>
						<td><span class="glyphicon glyphicon-edit"></span> <?php echo "House No-".$data['holding'];?> <?php echo "Road no-".$data['road'];?> <?php echo $data['block'];?>, <?php echo $data['area'];?>, <?php echo $data['distName'];?></td>
					</tr>
					<?php } } ?>
				</table>
			</div>

			<div>
			    <img src='img/icon2.png' alt='' style = "width: 12px;
float: right;
margin-left: 50px;"/>
			<!-- <ul>
				<li>email: <a href="mailto:joe@bloggs.com" target="_blank">joe@bloggs.com</a></li>
				<li>w: <a href="http://www.bloggs.com">www.bloggs.com</a></li>
				<li>mobile: 01234567890</li>
			</ul> -->
			
		</div>
		<div class="clear"></div>
	</div>
	<!-- head section -->
	
	<div id="mainArea" class="quickFade delayFive">
	<div id="mainArea" class="quickFade delayFive">
	<?php 
		$getObj = $cv->getObjective($userId);
		if ($getObj) {
			while ($info = $getObj->fetch_assoc()) {?>
			
		<section>
			<article>
				<div class="sectionTitle">
					<h1>Career Objective</h1>
				</div>
				
				<div class="sectionContent">
					<p><?php echo $info['ques1'];?>. <?php echo $info['ques2'];?>. <?php echo $info['ques3'];?></p>
					</div>
				</article>
				<div class="clear"></div>
			</section>
			<?php 	
			}
		}
	?>
			<section>
				<div class="sectionTitle">
					<h1>Education</h1>
				</div>

				<div class="sectionContent">
				<?php
        
               $getpgrad=$cv->getpgraduationby($userId);
               if ($getpgrad) {

          
              while ($value = $getpgrad->fetch_assoc()) {
				?>

				<article>
						<h2>Post Graduation</h2>
						<p class="subDetails"><span><?php echo $value['uName'] ;?></span><br>
							<span><?php echo "Dept. - ".$value['studyDept'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>
						<?php } } ?>


				<?php
        
               $getgrad=$cv->getgraduationby($userId);
               if ($getgrad) {

          
              while ($value = $getgrad->fetch_assoc()) {
				?>
					<article>
						<h2>Graduation</h2>
						<p class="subDetails"><span><?php echo $value['uName'] ;?></span><br>
							<span><?php echo "Dept. - ".$value['studyDept'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>
					<?php } } ?>

                   
				<?php
        
               $gethsc=$cv->gethscinfoby($userId);
               if ($gethsc) {

          
              while ($value = $gethsc->fetch_assoc()) {
				?>
					<article>
						<h2>Higher Secondary Certificate(H.S.C)</h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['GName'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>
                  <?php } } ?>
               <?php
        
               $getDiploma=$cv->getdiplomainfoby($userId);
               if ($getDiploma) {

          
              while ($value = $getDiploma->fetch_assoc()) {
				?>


                  <article>
						<h2>Diploma Education</h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['degName'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>

					 <?php } } ?>

					 <?php
        
               $getALevel=$cv->getaLevelinfoby($userId);
               if ($getALevel) {

          
              while ($value = $getALevel->fetch_assoc()) {
				?>


                  <article>
						<h2>A Level</h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['divName'] ;?></span><br>
							
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>

					 <?php } } ?>


                 <?php
        
               $getssc=$cv->getSchoolinfoby($userId);
               if ($gethsc) {

          
              while ($value = $getssc->fetch_assoc()) {
				?>
					<article>
						<h2><?php echo $value['name'] ;?></h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['GName'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span>Passing Year: 2016</span>
						</p>
					</article>

					<?php } } ?>


<?php
        
               $getOLevel=$cv->getoLevelinfoby($userId);
               if ($getOLevel) {

          
              while ($value = $getOLevel->fetch_assoc()) {
				?>


                  <article>
						<h2>O Level</h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['divName'] ;?></span><br>
							
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>

					 <?php } } ?>



				</div>
				<div class="clear"></div>
			</section><br>

			<?php 
	$getl = $cv->getexp($userId);
	if ($getl) {
		while ($data = $getl->fetch_assoc()) {?>

		<?php 
			if ($data['userId'] == $userId) {?>		
			<section>
				<div class="sectionTitle">
					<h1>Work Experience</h1>
				</div>

				<div class="sectionContent">
					<article>
						<table>
						<?php 
						$getObj = $cv->getAllExp($userId);
						if ($getObj) {
							while ($info = $getObj->fetch_assoc()) {?>
							<tr>
								<td><p>Job Title</p></td>
								<td>:</td>&nbsp;&nbsp;
								<td>&nbsp;<?php echo $info['designation'];?></td>
							</tr>
							<tr class="subDetails">
								<td>Company Name</td>
								<td>:</td>&nbsp;&nbsp;
								<td> &nbsp;<?php echo $info['companyName'];?></td>
							</tr>
							<tr class="subDetails">
								<td>Duration</td>
								<td>:</td>&nbsp;&nbsp;
								<td><span>  &nbsp;<?php echo $info['sMonth'];?> -  <?php echo $info['eMonth'];?></span></td>
							</tr>
							<?php } } ?>
						</table>
					</article>
				</div>
				<div class="clear"></div>
			</section><br>
						<?php } ?>


		<?php } } ?>

			<?php 
			$gettit = $cv->gettitle($userId);
			if($gettit){
				while ($data = $gettit->fetch_assoc()) {?>
	<?php
					if ($data['userId'] == $userId) { ?>
			<section>

					

				<div class="sectionTitle">

						

					<h1>Professional Training</h1>
									
				</div>
				<?php } }?>
				<div class="sectionContent">
					<article>
						<table>
					<?php 
						$getObj = $cv->getTraining($userId);
						if ($getObj) {
							while ($info = $getObj->fetch_assoc()) {?>
							<tr>
								<td><h2>Certification</h2></td>
								<td>:</td> 
								<td> &nbsp;<?php echo $info['trainingName'] ; ?> </td>
							</tr>
							<tr class="subDetails">
								<td>Institution</td>
								<td>:</td>
								<td>&nbsp;<?php echo $info['tInstitution'] ; ?></td>
							</tr>
							<tr class="subDetails">
								<td>Duration</td>
								<td>:</td>
								<td>&nbsp;<?php echo $info['sMonth'] ;?> - <?php echo $info['eMonth'] ;?></td>
							</tr>
							<?php } } ?>
						</table>
					</article>
				</div>
				<div class="clear"></div>
			</section><br>
			<?php	} ?>


<!-- 			<section>
				<div class="sectionTitle">
					<h1>Skills</h1>
				</div>

				<div class="sectionContent">
					<ul class="keySkills">
						<li>HTML</li>
						<li>CSS</li>
						<li>Bootstrap</li>
						<li>Javascript</li>
						<li>MySQL</li>
						<li>PHP</li>
					</ul>
				</div>
				<div class="clear"></div>
			</section> -->
<?php 
	$getl = $cv->getlanguage($userId);
	if ($getl) {
		while ($data = $getl->fetch_assoc()) {?>

		<?php 
			if ($data['userId'] == $userId) {?>
			<section>
				<div class="sectionTitle">
					<h1>Language</h1>
				</div>
				
				<div class="sectionContent">
<table class="table">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">Reading</th>
      <th scope="col">Writing</th>
      <th scope="col">Speaking</th>
    </tr>
  </thead>
  <tbody>
  <?php 
				$getUl = $cv->getUserlanguage($userId);
				if ($getUl) {
					while($value = $getUl->fetch_assoc()){?>

    <tr>
      <!-- <th scope="row">1</th> -->
      <td><?php echo $value['flang'];?></td>
      <td><?php echo $value['reading'];?></td>
      <td><?php echo $value['writing'];?></td>
      <td><?php echo $value['speaking'];?></td>
    </tr>
    <?php } } ?>
  </tbody>
</table>
				</div>
				
				<div class="clear"></div>
			</section>	
			<?php } ?>


		<?php } } ?>	
<?php
        
               $getinfo=$cv->getpersonalInfo($userId);
               if ($getinfo) {

          
              while ($value = $getinfo->fetch_assoc()) {
				?>
			<section>
				<article>
					<div class="sectionTitle">
						<h1>Personal Details</h1>
					</div>

					<div class="sectionContent">
						<table class="subDetails">
							<tr>
								<td>Father's Name</td>
								<td>: &nbsp;<?php echo $value['fName'] ;?></td>
								<td></td>
							</tr>
							<tr>
								<td>Mother's Name</td>
								<td>: &nbsp;<?php echo $value['mName'] ;?></td>
								<td></td>
							</tr>
							<?php
        
               $getdob=$cv->getpersonalDob($userId);
               if ($getdob) {

          
              while ($data = $getdob->fetch_assoc()) {
				?>
							<tr>
								<td>Date of Birth</td>
								<td>: &nbsp;<?php echo $data['dob'] ;?></td>
								<td></td>
							</tr>

							<?php } } ?>
							<tr>
								<td>Nationality</td>
								<td>: &nbsp;<?php echo $value['nId'] ;?></td>
								<td></td>
							</tr>
							
							<tr>
								<td>Marital Status</td>
								<td>: &nbsp;<?php echo $value['maritalStatus'] ;?></td>
								<td></td>
							</tr>
							<?php
        
               $getadd=$cv->getpaddress($userId);
               if ($getadd) {

          
              while ($dataa = $getadd->fetch_assoc()) {
				?>
							<tr>
								<td>Permanent Address</td>
								<td>: &nbsp; <?php echo $dataa['area'] ;?> , &nbsp; <?php echo $dataa['distName'] ;?></td>
								<td></td>
							</tr>
							<?php } } ?>
							
						</table>
					</div>
				</article>
				<div class="clear"></div>
			</section>
			<?php } }  ?>

					</div>
	</div>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.min.js"></script>
<!-- <script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-3753241-1");
pageTracker._initData();
pageTracker._trackPageview();
</script> -->
</body>
</html>