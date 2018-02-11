<?php include_once "inc/header.php";?>
<?php include_once "Classes/educationc.php";?>
<?php include_once "Classes/cvdrop.php";?>

<?php 
  $edu = new Education();
  $userId = Session::get("userId");
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $insertdiploma = $edu->diplomaInsert($_POST, $userId);
    }
 
?>
<?php 
  
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['academic'])) {
       $insertdiploma = $edu->diplomaInsert($_POST, $userId);
       $status = $_POST['status'];
        $insertoverall = $edu->diplomaStatInsert($status, $userId);
    }
 
?>

        <div class="container" ">
            
            <h2>Diploma Degree Details</h2> <br>
           <div class="row">
               <div class="col-md-6">
                   <form action="" method="post">
  <div class="form-group">
    <label for="exampleFormControlInput1">Name of Institution</label>
    <input type="text" class="form-control" name="name" id="exampleFormControlInput1" placeholder="Your Institute Name">
  </div>
  <div class="form-group">
                <label for="exampleFormControlSelect1">Name Of Your Discipline</label>
                <select class="form-control" id="exampleFormControlSelect1" name="id">
                <option>Select Your Discipline</option>
                 <?php
                    $cvd = new Curriculum();
                    $getdg = $cvd->getDsipline();
                    if ($getdg) {
                    while ($value = $getdg->fetch_assoc()) {
                   
                ?>
                   <option value="<?php echo $value['id'];?>" ><?php echo $value['disipline'];?></option>
                  <?php } } ?>
                </select>
              </div>
  <!--<div class="form-group">
                <label for="exampleFormControlSelect1">Name Of Department</label>
                <select class="form-control" id="exampleFormControlSelect1" name="dId">
                <option>Select Your Department</option>
                 <?php
                    //$cvd = new Curriculum();
                    //$getyd = $cvd->getDept();
                    //if ($getyd) {
                    //while ($value = $getyd->fetch_assoc()) {
                   
                ?>
                   <option value="<?php// echo $value['dId'];?>" ><?php// echo $value['deptName'];?></option>
                  <?php// } } ?>
                </select>
              </div>-->
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
                   <option value="<?php echo $value['divId'];?>" ><?php echo $value['divName'];?></option>
                  <?php } } ?>
                </select>
              </div>

  <div class="form-group">
    <label for="exampleFormControlInput1">G.P.A/Grade</label>
    <input type="text" name="cgpa" class="form-control" id="exampleFormControlInput1" placeholder="CGPA 5.00">
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
            <div class="row">
              <div class="col-md-3">
               <input class="form-control"  type="hidden" name="status" value="1"/> 
            <input type="submit" name="academic" value="My Academic Life Ends Here" class="btn btn-primary" >
             </div>
              <div class="col-md-3" style="margin-left: 78px;"><input class="form-control"  type="hidden" name="status" value="1"/> 
                <button type="submit" name="submit"  class="btn btn-primary">I have More Education to Input</button>
                
            </div>
            </div>
</form>
               </div>
           </div> 
           
            
        </div>




















<?php include_once "inc/footer.php";?>