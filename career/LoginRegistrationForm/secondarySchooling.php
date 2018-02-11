<?php include_once "inc/header.php";?>
<?php include_once "Classes/educationc.php";?>
<?php include_once "Classes/cvdrop.php";?>
<?php include_once "Classes/address.php";?>

<?php 
  $edu = new Education();
  $userId = Session::get("userId");
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $insertssc = $edu->sscInsert($_POST, $userId);
    }
 
?>
    
 <?php
      
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['academic'])) {
            
             $insertssc = $edu->sscInsert($_POST, $userId);
             $status = $_POST['status'];
             $updatestat = $edu->statUpdateSchool($status , $userId);
        }
 
?>
   

    
    <div class="container">
        <a href="education.php"><button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Go Back</button></a>  
        <header> <h2> Secondary School Certificate </h2> </header>
        <div class="row">
        <?php
          if (isset($insertssc)) {
            echo $insertssc;
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
                <label for="exampleFormControlInput1">Achived Grade</label>
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
                <select class="form-control" id="exampleFormControlSelect1" name="divId" required="">
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
               <input class="form-control"  type="hidden" name="status" value="1"/> 
            <input type="submit" name="academic" value="My Academic Life Ends Here" class="btn btn-primary" >
             </div>
              <div class="col-md-3" style="margin-left: -50px;"><input class="form-control"  type="hidden" name="status" value="1"/> 
                <button type="submit" name="submit"  class="btn btn-primary">I have More Education to Input</button>
                
            </div>
            </div>
              
</form>
 
           
</div>
    </div>























<?php include_once "inc/footer.php";?>