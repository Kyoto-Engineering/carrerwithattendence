<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 
  $add = new Address();
  $uId = Session::get('userId');
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $updateAdd = $add->addressUpdate($uId, $_POST);
    }
 
?>

       

        <div class="container">
            <div class="row">
                  <div class="col-md-12">
                   <div class="btn-group">
                          <a href="view_address.php">
                <button type="button" class="btn btn-primary"><- Go Back</button>
                    </a>
                    </div>
                      
                  </div>
              </div>
            <div class="col-sm-6" id="adminForm">
            <h2>Present Address</h2>
            <br>
            <?php 
                if (isset($updateAdd)) {
                    echo $updateAdd;
                }
             ?>
             
             <?php
                $editAddress = $add->editmyAddress($userId);
                if($editAddress){
                    while($data = $editAddress->fetch_assoc()){
                        
                  
            ?>

            
            <form action="" method="post" class="w3-container">
                <p>
                    <label> Flat/Level/Floor No</label>
                    <input class="form-control" id="usr" type="text" name="flat" value="<?php echo $data['flat'] ?>">
                </p>
                
                <br>
                
                <p>
                    <label> Holding No </label>
                    <input class="form-control" id="usr" type="text" name="holding" value="<?php echo $data['holding'] ?> " required >
                </p>
                
                <br>
                
                <p>
                    <label> Building Name </label>
                    <input class="form-control" id="usr" type="text" name="building" value="<?php echo $data['building'] ?> ">
                </p>
                
                <br>
                
                <p>
                    <label> Road No / Road Name </label>
                    <input class="form-control" id="usr" type="text" name="road" value="<?php echo $data['road'] ?>"  >
                </p>
                
                <br>
                
                <p>
                    <label> Block/Sector </label>
                    <input class="form-control" id="usr" type="text" name="block" value="<?php echo $data['block'] ?> ">
                </p>
                
                <br>
                
                <p>
                    <label> Area </label>
                    <input class="form-control" id="usr" type="text" name="area" value="<?php echo $data['area'] 
                    ?>"   >
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
                                           <option 
                                           <?php 
                                    if ($value['divId'] == $data['divId']) {?>
                                        selected = "selected";
                                        <?php } ?>

                                           value="<?php echo $value['divId'];?>" ><?php echo $value['divName'];?></option>  
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
                                           <option 
                                           <?php 
                                    if ($value['distId'] == $data['distId']) {?>
                                        selected = "selected";
                                        <?php } ?>

                                           value="<?php echo $value['distId'];?>" ><?php echo $value['distName'];?></option>  
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
                                           <option
                                           <?php 
                                    if ($value['thId'] == $data['thId']) {?>
                                        selected = "selected";
                                        <?php } ?>

                                            value="<?php echo $value['thId'];?>" ><?php echo $value['thName'];?></option>  
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
                                           <option
                                           <?php 
                                    if ($value['postId'] == $data['postId']) {?>
                                        selected = "selected";
                                        <?php } ?>

                                            value="<?php echo $value['postId'];?>" ><?php echo $value['postName'];?></option>  
                                          <?php } } ?>    
                                        </select>
                                        
                                       
                                    <br>
                                </p>


                
                <p>
                    <button type="submit" name="submit" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Update</button>
                </p>
                
                <br>
            </form>
            <?php } } ?>
        </div>



        </div>
        </div>
    
        









<?php include_once "inc/footer.php";?>