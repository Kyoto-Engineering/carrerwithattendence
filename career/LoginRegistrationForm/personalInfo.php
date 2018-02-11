<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>


<?php 

      $add = new Address();

?>
<?php
        $userId = Session::get("userId");
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
            $infoAdd = $add->personalInfo($_POST , $userId);

        }
 
?>



       

        <div class="container">
        <div class="row">
        <div class="col-md-6">
            <h2> Personal Information </h2>
            <?php
                if (isset($infoAdd)) {
                    echo $infoAdd;
                }
            ?>

             <form action="" method="post" class="w3-container">
                <p>
                    <label>Full Name</label>
                    <input class="form-control" id="usr" type="text"  name="perName" placeholder="Your Full Name" required>
                </p>
                
                <br>
               <p>
                    <label>Father's Name</label>
                    <input class="form-control" id="usr" type="text"  name="fName" placeholder="Your Father's Name" required>
                </p>
                <br>
                 <p>
                    <label>Mother's Name</label>
                    <input class="form-control" id="usr" type="text"  name="mName" placeholder="Your Mother's Name" required>
                </p>
                <br>
                 <p>
                    <label> <b> Marital Status </b> </label> <br>
                    <input class="w3-radio" type="radio" name="maritalStatus" value="married">
                    <label>Married</label>
                    &nbsp;
                    <input class="w3-radio" type="radio" name="maritalStatus" value="single">
                    <label>Single</label>
                </p>
                
                
                
                <br>
                <p>
                    <label>Spouse Name</label>
                    <input class="form-control" id="usr" type="text"  name="sName" placeholder="Your Spouse Name"  required >
                </p>
                

                <p>
                    <label> <b> Gender </b> </label> <br>
                    <input class="w3-radio" type="radio"   name="gender" value="male" >
                    <label>Male</label>
                    &nbsp;
                    <input class="w3-radio" type="radio"   name="gender" value="female">
                    <label>Female</label>
                </p>
                
                <br>
                 <p>
                    <label> National ID </label>
                    <input type="text" class="form-control" id="usr"  name="nId" required placeholder="National ID card no">
                </p>
                
                <br>

               
                                  
                
                    
                    
                   <div class="row">
                    <div class="col-md-2">
                    <button type="submit" name="submit" class="btn btn-primary">Submit </button> 
                    </div>

               
               </form>
               
             <?php
                //$userId = Session::get("userId");
                if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['next'])) {
                    $updatestat = $add->statUpdate($_POST , $userId);
                }
            ?>
<?php
$getp = $add->getInfop($userId);
if($getp){

?>


             <div class="col-md-2"> 
            <form action="" method="post" >
            <input class="form-control"  type="hidden" name="status" value="1"/> 
            <input type="submit" name="next" value="next" class="btn btn-primary">
            </form>
            </div>
            </div>
            
            </div><!-- next butn-->
<?php } ?>
             <div class="col-md-6 ">
<?php 
    if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['submit'])) {
      $addImage = $add->uploadpicture($userId, $_FILES);
    }
?>
             <form action="" method="post" enctype="multipart/form-data">
              <div class="row">
                  <div class="col-md-12 text-center colm">
                    <h3>Upload Your Picture</h3>
                     
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