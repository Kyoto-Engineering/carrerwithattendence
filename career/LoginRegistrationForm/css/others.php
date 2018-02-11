<?php include_once "inc/header.php";?>
<?php include_once "Classes/educationc.php";?>
<?php include_once "Classes/cvdrop.php";?>

<?php 
  $edu = new Education();
  $userId = Session::get("userId");
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $insertUg = $edu->undergraduateInsert($_POST, $userId);
    }
 
?>
    
    


    
    <div class="container">
        <a href="resume.php"><button type="submit" name="" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Go Back</button></a>  
        <header> <h2>Give Your Input</h2> </header> <br>
        
        <form action="" method="post">
            <div class="form-group">
                <label for="exampleFormControlInput1">Name of Institution</label>
                <input type="text" class="form-control" name="name" id="exampleFormControlInput1" placeholder="Your Institute Name">
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
                   <option value="<?php echo $value['studydeptId'];?>" ><?php echo $value['studyDept'];?></option>
                  <?php } } ?>
                </select>
              </div>




          <div class="form-group">
                <label for="exampleFormControlInput1">Achieved Grade</label>
                <input type="text" class="form-control" name="cgpa" id="exampleFormControlInput1" placeholder="Your Achived Grade ex:-5.00">
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
                   <option value="<?php echo $value['pyearid'];?>" ><?php echo $value['pyear'];?></option>
                  <?php } } ?>
                </select>
              </div>
 
             <p>
                <button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Submit</button>  
            </p>
</form>
    </div>
























<?php include_once "inc/footer.php";?>