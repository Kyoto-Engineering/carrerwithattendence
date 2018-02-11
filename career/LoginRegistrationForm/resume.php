<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>
<?php 
    $add = new Address();
    $userId = Session::get('userId');
    
?>

<div class="container">


              <div class="row upper">
                    <div class=col-md-2>
                        
                            <a href="personalInfo.php"> <button class="btn btn-primary" type="button" >My info
                            </button></a>
                           
                            </div>
                            <div class=col-md-2>
                        
                            <a href="basicinfo.php"> <button class="btn btn-primary" type="button" >My Address
                            </button></a>
                           
                            </div>
                            <div class=col-md-2>
                        
                            <a href="education.php"> <button class="btn btn-primary" type="button" >My Educational Details
                            </button></a>
                           
                            </div>
                            <div class=col-md-2>
                        
                            <a href="professionalTraining.php"> <button class="btn btn-primary" type="button" >My Professional Training
                            </button></a>
                           
                            </div>
                            <div class=col-md-2>
                        
                            <a href="workExperience.php"> <button class="btn btn-primary" type="button" >My Work Experience
                            </button></a>
                           
                            </div>
                            <div class=col-md-2>
                        
                            <a href="portfolio.php"> <button class="btn btn-primary" type="button" >My Portfolio
                            </button></a>
                           
                            </div>
                            
                            </div>
                            <br/>
                            <div class="row">
                            <center> <div class="col-md-offset-5 col-md-2">
                        
                            <a href="reference.php"> <button class="btn btn-primary" type="button" > References
                            </button></a>
                           
                            </div></center>

                            </div>



                                 <?php 
   if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['upload'])) {
      $addResume = $add->uploadresume($userId, $_FILES);
    }
     ?>
          <form action="" method="post" enctype="multipart/form-data">
              <div class="row">
                  <div class="col-md-12 text-center colm">
                    <h3>Upload Your Resume</h3>
                     
             <?php 
                if (isset($addResume)) {
                  echo $addResume;
                }
              ?>
              
                    <hr/>
                    <div class="col-sm-12 colm2" style="margin-bottom:20px;">
                      <label class="btn-bs-file btn btn-lg btn-primary">           
                    <input type="file" name="resume" />
                    <input class="buton" type="submit" name="upload" value="Upload"/>
            </label>
                  </div>
              </div>

          </div>
          <hr/>
          </form>
          
          
          <?php
            $getresume = $add->getuserresume($userId);
            if($getresume){
                while($data = $getresume->fetch_assoc()){
            
          ?>
          
                        <a href="<?php echo $data['resume'] ?>" target="_blank">
                         <img src="image/adobe-pdf-icon.png" alt="pdf" height="90px" width="80px">
                         <p>My Resume.pdf</p>
                       </a>
          
          
      
              <?php } } ?>    
                            </div>
                            
                            
                            <?php include_once "inc/footer.php";?>