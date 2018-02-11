<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 
  $add = new Address();
  $uId = Session::get('userId');
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
              $insertpAdd = $add->paddressInsert($uId, $_POST);
    }
?>

       

        <div class="container">

        <?php
            
        ?>
            <div class="col-sm-6">
            <h2>Permanent Address</h2>
            <?php
                if (isset($insertpAdd)) {
                    echo $insertpAdd;
                }
            ?>
            <br>
            <form action="" method="post">
                 <!--<p> 
                                     <label for="sel1">Same as present Address</label>
                                        <select class="form-control" id="sellect" name="id">
                                          <option>---</option>
                                            <?php
                                                //$getsame = $add->getsameadd();
                                                //if ($getsame) {
                                                  //while ($value = $getsame->fetch_assoc()) {
                                                    
                                              ?>
                                           <option value="<?php //echo //$value['id'];?>" ><?php// echo //$value['name'];?></option>  
                                          <?php //} } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>-->
                 <p>
                    <label> Flat/Level/Floor No</label>
                    <input class="form-control" type="text" name="flat" placeholder="Your Flat/Level/Floor No; ex:Flat-B2/Level-3/2nd Floor" >
                </p>
                
                <br>
                
                <p>
                    <label> Holding No </label>
                    <input class="form-control" type="text" name="holding" placeholder="Holding No of your residence; Ex;64, 432/C etc" >
                </p>
                
                <br>
                
                <p>
                    <label> Building Name </label>
                    <input class="form-control" type="text" name="building" placeholder="Name of your residence; Ex: Iqbal center, Rangpur House etc" >
                </p>
                
                <br>
                
                <p>
                    <label> Road No / Road Name </label>
                    <input class="form-control" type="text" name="road" placeholder="Road no of your residence; Ex:5, Atish Dipankar Road etc" >
                </p>
                
                <br>
                
                <p>
                    <label> Block/Sector </label>
                    <input class="form-control" type="text" name="block" placeholder="Block/Sector name/number of your residence; Ex:B,13 etc" >
                </p>
                
                <br>
                
                <p>
                    <label> Area / Village </label>
                    <input class="form-control" type="text" name="area" placeholder="Area name of your residence; ex: Niketon, Mohakhali" >
                </p>
                
                <br>
                
                <p> 
                                     <label for="sel1">Divission</label>
                                        <select class="form-control" id="sellect" name="divId">
                                          <option>Your Divission</option>
                                            <?php
                                                $getDiv = $add->getDivission();
                                                if ($getDiv) {
                                                  while ($value = $getDiv->fetch_assoc()) {
                                                    
                                              ?>
                                           <option value="<?php echo $value['divId'];?>" ><?php echo $value['divName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
                
                <p> 
                                     <label for="sel1">District</label>
                                        <select class="form-control" id="sellect" name="distId">
                                          <option>Your District</option>
                                            <?php
                                                $getDist = $add->getDistrict();
                                                if ($getDist) {
                                                  while ($value = $getDist->fetch_assoc()) {
                                                    
                                              ?>
                                           <option value="<?php echo $value['distId'];?>" ><?php echo $value['distName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
                
                 <p> 
                                     <label for="sel1">Thana</label>
                                        <select class="form-control" id="sellect" name="thId">
                                          <option>Your Thana</option>
                                            <?php
                                                $getTh = $add->getThana();
                                                if ($getTh) {
                                                  while ($value = $getTh->fetch_assoc()) {
                                                    
                                              ?>
                                           <option value="<?php echo $value['thId'];?>" ><?php echo $value['thName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>
                
                 <p> 
                                     <label for="sel1">Post Office</label>
                                        <select class="form-control" id="sellect" name="postId">
                                          <option>Your Post Office</option>
                                            <?php
                                                $getPo = $add->getpostName();
                                                if ($getPo) {
                                                  while ($value = $getPo->fetch_assoc()) {
                                                    
                                              ?>
                                           <option value="<?php echo $value['postId'];?>" ><?php echo $value['postName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>

                
                
                
                <p>
                      <button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Submit</button>
                </p>
                
                <br>
            </form>
        </div>
   </div>      
                <div class=col-sm-2>
                 <?php
                //$userId = Session::get("userId");
                if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['next'])) {
                    $updatestat = $add->paddstatUpdate($_POST , $uId);
                }
            ?>
<?php
$getp = $add->getPaddStat($uId);
if($getp){?>


             
            <form action="" method="post" >
            <input class="form-control"  type="hidden" name="status" value="1"/> 
            <input type="submit" name="next" value="next" class="btn btn-primary">
            </form>
            
            </div>
            
<?php } ?>
        
        
        
       
    
        









<?php include_once "inc/footer.php";?>