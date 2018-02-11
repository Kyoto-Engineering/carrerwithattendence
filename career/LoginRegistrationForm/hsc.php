<?php include_once "inc/header.php";?>
<?php include_once "Classes/educationc.php";?>
<?php include_once "Classes/cvdrop.php";?>
<?php include_once "Classes/address.php";?>


<?php 
  $edu = new Education();
  $userId = Session::get("userId");
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $inserthsc = $edu->hscInsert($_POST, $userId);
    }
 
?>
    <?php
     
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['academic'])) {
            
             $insertssc = $edu->hscInsert($_POST, $userId);
             $status = $_POST['status'];
             $updatestat = $edu->statUpdateHsc($status , $userId);
        }
 
?>
    


    
    <div class="container">
        <a href="education.php"><button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Go Back</button></a>  
        <header> <h2> HSC Educational Details </h2> </header> <br>
        <?php
            if(isset($inserthsc)){
                echo $inserthsc;
            }
        ?>
        <form action="" method="post">
             <div class="form-group">
                <label for="exampleFormControlInput1">Name of Institution</label>
                <input type="text" class="form-control" name="name" id="exampleFormControlInput1" placeholder="Your Institute Name">
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
                  <option value="<?php echo $value['gId'];?>" ><?php echo $value['GName'];?></option>
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
              <div class="row">
              <div class="col-md-3">
             <input class="form-control"  type="hidden" name="status" value="1" /> 
            <input type="submit" name="academic" value="My Academic Life Ends Here" class="btn btn-primary">
              </div>
              <div class="col-md-3" style="margin-left: -50px;">
              <input class="form-control"  type="hidden" name="status" value="1"/>
                <button type="submit" name="submit"  class="btn btn-primary">More Education</button>
                </div>
                
            </div>
</form>
    </div>
























<?php include_once "inc/footer.php";?>