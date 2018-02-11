<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 
    $add = new Address();
    $userId = Session::get('userId');
    if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['submit'])) {
      $addImage = $add->uploadpicture($userId, $_FILES);
    }
?>
          <div class="container" style="margin-bottom: 350px;">


              <div class="row">
                    <div class=col-md-4>
                        <div class="dropdown">
                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Secondary Schooling Information
                            <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                             <li><a href="secondarySchooling.php"> Secondary Schooling (S.S.C/Dakhil) </a></li>
                            <li><a href="oLevel.php"> O Level </a></li>
                             <li><a href="vocational.php"> Vocational </a></li>
                            </ul>
                        </div>    
                    </div>
                    
                

                  <div class=col-md-4>
                    <div class="dropdown">
                     <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Higher Secondary Schooling Information
                        <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="hsc.php">Higher Secondary (H.S.C/Alim)</a></li>
                            <li><a href="diploma.php"> Diploma</a></li>
                            <li><a href="aLevel.php">  A Level </a></li>
                        </ul>
                    </div>
                  </div>

                  <div class=col-md-4>
                      <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Graduation Information
                        <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="under_graduate.php">Under Graduate</a></li>
                            <li><a href="post_graduate.php">Post Graduate</a></li>
                        </ul>
                    </div>
                  </div>
                  <br/><br/>
                    
              </div>

              <br/><br/><br/>
               <?php
             
                    $getoverall = $add->getAllOverall($userId);
                    if ($getoverall) {
                    while ($value = $getoverall->fetch_assoc()) {

              ?>

              <?php
                  if ($value['ssc'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }elseif ($value['olevel'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }elseif ($value['vocational'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }elseif ($value['hsc'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }elseif ($value['diploma'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }elseif ($value['alevel'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }elseif ($value['ugard'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }elseif ($value['otherUgard'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }elseif ($value['postgrad'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }elseif ($value['otherPgard'] == '1') {
                    echo "<center><h2><span style='color:green;'>Thank You for completing Your Educational Information</span></h2><center>";
                  }else{
                    echo "Not Completed";
                  }

              ?>
              <?php } } ?>
              <br/>
              
              
              <?php
             
                    $getoverall = $add->getAllUserOverall($userId);
                    if (!$getoverall) {

                      echo "<center><h2><span style='color:red;'>You have not Completed your Educational Information</span></h2></center>";
                    }
              ?>
              <br/>

              <div class="row">
                  <div class="col-md-12 text-center">
                   <div class="btn-group">
                          <a href="resume.php">
                <button type="button" class="btn btn-primary"><- Go Back</button>
                    </a>
                    </div>
                      <div class="btn-group">
                          <a href="professionalTraining.php">
                <button type="button" class="btn btn-primary">Next-></button>
                    </a>
                    </div>
                  </div>
              </div>
              </div>
             
              
              <!--<form action="" method="post" enctype="multipart/form-data">
              <div class="row">
                  <div class="col-md-12 text-center">
                    <h3>Upload Your Picture</h3>
                     <span style="color:green">
              <?php 
                //if (isset($addImage)) {
                  //echo $addImage;
                //}
              ?>
                    <hr/>
                    <div class="col-sm-12" style="margin-bottom:20px;">
                      <label class="btn-bs-file btn btn-lg btn-primary">           
                    <input type="file" name="image" />
                    <input class="buton" type="submit" name="submit" value="Upload"/>
            </label>
                  </div>
              </div>

          </div>
          </form>-->

                                








<?php include_once "inc/footer.php";?>