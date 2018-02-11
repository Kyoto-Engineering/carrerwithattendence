<?php include_once "inc/header.php";?>
<?php include_once "Classes/educationc.php";?>
<?php include_once "Classes/cvdrop.php";?>

<?php 
  $edu = new Education();
  $userId = Session::get("userId");
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $updateUg = $edu->postgraduateUpdate($_POST, $userId);
    }
 
?>
    
    


    
    <div class="container">
        <a href="view_education_detail.php"><button type="submit" name="" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Go Back</button></a>  
        <header> <h2> Update Postgraduate Details </h2> </header> <br>
         <?php
                $editpostgrad = $edu->editmypostgrad($userId);
                if($editpostgrad){
                    while($data = $editpostgrad->fetch_assoc()){
                        
                  
            ?>
        <form action="" method="post">
            <div class="form-group">
                <label for="exampleFormControlSelect1">University Name</label>
                <select class="form-control" id="exampleFormControlSelect1" name="uId">
                <option>Select Your University</option>
                 <?php
                    $cvd = new Curriculum();
                    $getvr = $cvd->getVersity();
                    if ($getvr) {
                    while ($value = $getvr->fetch_assoc()) {
                   
                ?>
                   <option
                    <?php 
                                    if ($value['uId'] == $data['uId']) {?>
                                        selected = "selected";
                                 <?php } ?>

                    value="<?php echo $value['uId'];?>" ><?php echo $value['uName'];?></option>
                  <?php } } ?>
                </select>
              </div>
              

              <div class="form-group">
                <label for="exampleFormControlSelect1">Study Department</label>
                <select class="form-control" id="exampleFormControlSelect1" name="studydeptId">
                <option>Select Your Department</option>
                 <?php
                    $cvd = new Curriculum();
                    $getstudy = $cvd->getStudydept();
                    if ($getstudy) {
                    while ($value = $getstudy->fetch_assoc()) {
                   
                ?>
                   <option 
                     <?php 
                                    if ($value['studydeptId'] == $data['studydeptId']) {?>
                                        selected = "selected";
                                 <?php } ?>

                   value="<?php echo $value['studydeptId'];?>" ><?php echo $value['studyDept'];?></option>
                  <?php } } ?>
                </select>
              </div>




          <div class="form-group">
                <label for="exampleFormControlInput1">Achieved Grade</label>
                <input type="text" class="form-control" name="cgpa" id="exampleFormControlInput1" value="<?php echo $data['cgpa']  ?>">
          </div>



  <div class="form-group">
                <label for="exampleFormControlSelect1">Passing Year</label>
                <select class="form-control" id="exampleFormControlSelect1" name="pyearid">
                <option>Select Year</option>
                 <?php
                    $cvd = new Curriculum();
                    $getyr = $cvd->getYear();
                    if ($getyr) {
                    while ($value = $getyr->fetch_assoc()) {
                   
                ?>
                   <option 
                   <?php 
                                    if ($value['pyearid'] == $data['pyearid']) {?>
                                        selected = "selected";
                                 <?php } ?>

                   value="<?php echo $value['pyearid'];?>" ><?php echo $value['pyear'];?></option>
                  <?php } } ?>
                </select>
              </div>
 
             <p>
                <button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Submit</button>  
            </p>
</form>
<?php } } ?>
    </div>
























<?php include_once "inc/footer.php";?>