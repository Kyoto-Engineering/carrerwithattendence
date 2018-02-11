<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>
<?php include_once "helpers/Format.php";?>

<?php 

      $add = new Address();
      $fm = new Format();

?>
<?php
        $userId = Session::get("userId");
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
            $infoupdate = $add->updatepersonalInfo($_POST , $userId);
        }
 
?>


       

        <div class="container">
        <div class="row">
        <div class="col-md-6">
            <h2> Personal Information </h2>
            <?php
                if (isset($infoupdate)) {
                    echo $infoupdate;
                }
            ?>
            <?php
                $editInfo = $add->editmyInformation($userId);
                if($editInfo){
                    while($data = $editInfo->fetch_assoc()){
                        
                  
            ?>
             <form action="" method="post" class="w3-container">
                <p>
                    <label>Full Name</label>
                    <input class="form-control" id="usr" type="text"  name="perName" value="<?php echo $data['perName']?>"   required>
                </p>
                
                <br>
                
                 <br>
               
                <br>
                <p>
                    <label> Date of Birth </label>
                    <input class="form-control" type="date"  id="usr"   name="dob" value="<?php echo $data['dob']?>" required>
                </p>
                
                <br>
                

                <p>
                    <label> <b> Gender </b> </label> <br>
                    <input class="w3-radio" type="radio"   name="gender" value="male" checked>
                    <label>Male</label>
                    &nbsp;
                    <input class="w3-radio" type="radio"   name="gender" value="female">
                    <label>Female</label>
                </p>
                
                <br>
                 <p>
                    <label> National ID </label>
                    <input type="text" class="form-control" id="usr"  name="nId" required value="<?php echo $data['nId']?>" />
                </p>
                
                <br>

                <p>
                    <label> <b> Marital Status </b> </label> <br>
                    <input class="w3-radio" type="radio" name="maritalStatus" value="married">
                    <label>Married</label>
                    &nbsp;
                    <input class="w3-radio" type="radio" name="maritalStatus" value="single" checked>
                    <label>Single</label>
                </p>
                
                <br>
                   <input class="form-control" id="usr" type="hidden" name="stat" value="1"/>               
                <p>
                    
                    <button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Update</button>


                </p>
            </form>
            <?php } } ?>
            </div>
             <div class="col-md-6 ">
<?php 
    if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['submit'])) {
      $addImage = $add->uploadpicture($userId, $_FILES);
    }
?>
             <form action="" method="post" enctype="multipart/form-data">
              <div class="row">
                  <div class="col-md-12 text-center colm">
                    <h3>Update Your Picture</h3>
                     
                    <hr/>
                    <span style="color:green">
              <?php 
                if (isset($addImage)) {
                  echo $addImage;
                }
              ?>
              </span>
                    <div class="col-sm-12 colm2" style="margin-bottom:20px;">
                      <label class="btn-bs-file btn btn-lg btn-primary">           
                    <input type="file" name="image" />
                    <input class="buton" type="submit" name="submit" value="Upload"/>
            </label>
                  </div>
              </div>


          </div>
          <hr/>
          </form>
          </div>

</div>

        </div>










<?php include_once "inc/footer.php";?>