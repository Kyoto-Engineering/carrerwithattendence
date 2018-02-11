<?php include_once "inc/header.php";?>
<?php include_once "Classes/educationc.php";?>
<?php include_once "Classes/cvdrop.php";?>

<?php 
  $edu = new Education();
  $userId = Session::get("userId");
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $updatessc = $edu->sscUpdate($_POST, $userId);
    }
 
?>
    
    

    
    <div class="container">
        <a href="view_education_detail.php"><button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Go Back</button></a>  
        <header> <h2> Secondary School Certificate </h2> </header>
        <div class="row">
        <?php
          if (isset($updatessc)) {
            echo $updatessc;
          }
        ?>

        <?php
                $editSchool = $edu->editmyschool($userId);
                if($editSchool){
                    while($data = $editSchool->fetch_assoc()){
                        
                  
            ?>
            
        <form action="" method="post">
              <div class="form-group">
                <label for="exampleFormControlInput1">Name of Institution</label>
                <input type="text" class="form-control" name="name" id="exampleFormControlInput1" value="<?php echo $data['name']  ?>">
              </div>

              <div class="form-group">
                <label for="exampleFormControlSelect1">Group</label>
                <select class="form-control" id="exampleFormControlSelect1" name="gId">
                <option>Select Group</option>
                <?php
                  $getgp = $edu->getAllgroup();
                  if ($getgp) {
                    while ($value = $getgp->fetch_assoc()) {
                      
                ?>
                  <option 
                   <?php 
                                    if ($value['gId'] == $data['gId']) {?>
                                        selected = "selected";
                                 <?php } ?>


                  value="<?php echo $value['gId'];?>" ><?php echo $value['GName'];?></option>
                 <?php } } ?>
                </select>
              </div>
              <div class="form-group">
                <label for="exampleFormControlInput1">Achived Grade</label>
                <input type="text" class="form-control" name="cgpa" id="exampleFormControlInput1" value="<?php echo $data['cgpa']  ?>"
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

              <div class="form-group">
                <label for="exampleFormControlSelect1">Education Board</label>
                <select class="form-control" id="exampleFormControlSelect1" name="divId">
                <option>Select Board/Controlling Authority</option>
                 <?php
                    $cvd = new Curriculum();
                    $getyr = $cvd->getDivission();
                    if ($getyr) {
                    while ($value = $getyr->fetch_assoc()) {
                   
                ?>
                   <option 
                    <?php 
                                    if ($value['divId'] == $data['divId']) {?>
                                        selected = "selected";
                                 <?php } ?>

                   value="<?php echo $value['divId'];?>" ><?php echo $value['divName'];?></option>
                  <?php } } ?>
                </select>
              </div>

              <p>
                <button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Update</button>
                
            </p>
              
</form>
<?php  } } ?>
</div>
    </div>























<?php include_once "inc/footer.php";?>