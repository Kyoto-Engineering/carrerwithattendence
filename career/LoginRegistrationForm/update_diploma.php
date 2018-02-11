<?php include_once "inc/header.php";?>
<?php include_once "Classes/educationc.php";?>
<?php include_once "Classes/cvdrop.php";?>

<?php 
  $edu = new Education();
  $userId = Session::get("userId");
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $updatediploma = $edu->diplomaUpdate($_POST, $userId);
    }
 
?>


        <div class="container" ">
            
            <h2>Diploma Degree Details</h2> <br>
           <div class="row">
               <div class="col-md-6">
                <?php
                $editdiploma = $edu->editmydiploma($userId);
                if($editdiploma){
                    while($data = $editdiploma->fetch_assoc()){
                        
                  
            ?>
                   <form action="" method="post">
  <div class="form-group">
    <label for="exampleFormControlInput1">Name of Institution</label>
    <input type="text" class="form-control" name="name" id="exampleFormControlInput1" value="<?php echo $data['name'] ?>">
  </div>
  <div class="form-group">
                <label for="exampleFormControlSelect1">Name Of Degree</label>
                <select class="form-control" id="exampleFormControlSelect1" name="degId">
                <option>Select Your Degree</option>
                 <?php
                    $cvd = new Curriculum();
                    $getdg = $cvd->getDegree();
                    if ($getdg) {
                    while ($value = $getdg->fetch_assoc()) {
                   
                ?>
                   <option
                     <?php 
                                    if ($value['degId'] == $data['degId']) {?>
                                        selected = "selected";
                                 <?php } ?>

                    value="<?php echo $value['degId'];?>" ><?php echo $value['degName'];?></option>
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

  <div class="form-group">
    <label for="exampleFormControlInput1">G.P.A</label>
    <input type="text" name="cgpa" class="form-control" id="exampleFormControlInput1"  value="<?php echo $data['cgpa'] ?>">
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
  <p><button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Submit</button></p>
</form>
               </div>
           </div> 
           <?php } } ?>
           
            
        </div>




















<?php include_once "inc/footer.php";?>
