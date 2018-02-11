<?php include_once "inc/header.php";?>
<?php include_once "Classes/educationc.php";?>
<?php include_once "Classes/cvdrop.php";?>

<?php 
  $edu = new Education();
  $userId = Session::get("userId");
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $insertolevel = $edu->olevelInsert($_POST, $userId);
    }
 
?>
<?php
 if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['addstat'])) {
        $status = $_POST['status'];
        $insertolevel = $edu->olevelstatupdate($status, $userId);
    }
?>



        <div class="container">
        <a href="education.php"><button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Go Back</button></a>  
        <header> <h2> O-Level Educational Details </h2> </header> <br>
        <?php
          if (isset($insertolevel)) {
            echo $insertolevel;
          }
        ?>
        <form action="" method="post">
             <div class="form-group">
                <label for="exampleFormControlInput1">Name of Institution</label>
                <input type="text" class="form-control" name="name" id="exampleFormControlInput1" placeholder="Your Institute Name">
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

               <!--<div class="form-group">
                <label for="exampleFormControlSelect1">Education Board</label>
                <select class="form-control" id="exampleFormControlSelect1" name="divId">
                <option>Select Board/Controlling Authority</option>
                 <?php
                    //$cvd = new Curriculum();
                    //$getyr = $cvd->getDivission();
                    //if ($getyr) {
                    //while ($value = $getyr->fetch_assoc()) {
                   
                ?>
                   <option value="<?php //echo $value['divId'];?>" ><?php //echo $value['divName'];?></option>
                  <?php// } } ?>
                </select>
              </div>-->
             <div class="form-group">
                <label for="exampleFormControlInput1">Name of Your Board/Controlling Authority</label>
                <input type="text" class="form-control" name="divId" id="exampleFormControlInput1" placeholder="Your Board/Controlling Authority">
            </div>
             <p>
                <button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Submit</button>  
            </p>
</form>


    </div>

  <?php
    if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['add'])) {
      $allsubject = $cvd->insertolevelsubject($_POST, $userId);
    }
  ?>
<div class="container">

  <div class="row">
  <h3>Your Subjects & Grade's</h3><br/>
  <span style="color:green;">
    <?php
      if (isset($allsubject)) {
        echo $allsubject;
      }
    ?>
  </span>  
<br/>
<br/>
    <div class="col-md-12">
    <form action="" method="post">
      <div class="form-group">
                <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-3">
                          <p>Select Subjects</p>
                        </div>
                        <div class="col-md-5">
                          
                            <select class="form-control" id="exampleFormControlSelect1" name="oid">
                            <option>Select Your Subjects</option>
                 <?php
                    $cvd = new Curriculum();
                    $getyr = $cvd->getOlevelsubjects();
                    if ($getyr) {
                   while ($value = $getyr->fetch_assoc()) {
                   
                ?>
                   <option value="<?php echo $value['oid'];?>" ><?php echo $value['subjectname'];?></option>
                  <?php } } ?>
                </select>
                        </div>
                        <div class="col-md-3">
                          <input type="text"  class="form-control" name="grade" placeholder="grade">
                        </div>

                        <p>
                <button type="submit" name="add" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Add</button>  
            </p>
                    </div>
                  
              
                </div>
                <div class="col-md-4">
                    <table class="table">
    <thead>
      <tr>
        <th>Subject</th>
        <th>Grade</th>
        
      </tr>
    </thead>
    <tbody>
    <?php
      $getresult = $cvd->getAllolevelresult($userId);
      if ($getresult) {
        while ($data = $getresult->fetch_assoc()) {
        
    ?>
      <tr>
        <td><?php echo $data['subjectname']?></td>
        <td><?php echo $data['grade']?></td>
      </tr>
    <?php } } ?>  
    </tbody>
  </table>
                </div>
                </div>
                  
          </div><!--div class form group-->
           <div class="row">
              <div class="col-md-3">
             <input type="hidden" name="status" value="1" /> 
                <input type="submit" name="addstat" value="My Academic Life Ends Here" class="btn btn-primary">
              </div>
              <div class="col-md-3" style="margin-left: -50px;">
              
                <a href="education.php">
                 <input type="hidden" name="status" value="1" /> 
                <button type="button" name="submit"  class="btn btn-primary"> I have More Education to Input</button></a>
                </div>
                
            </div>
    </form>     
    </div>
  </div>
</div>

















<?php include_once "inc/footer.php";?>