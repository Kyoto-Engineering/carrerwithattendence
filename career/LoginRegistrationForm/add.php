<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 
  $add = new Address();
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $insertAdd = $add->addressInsert($_POST);
    }
 
?>

        <div class="container">
              <div class="row">
              <div class="alert alert-success alert-dismissible" role="alert">
            
               <marquee><p style="font-family: Impact; font-size: 18pt"><b><i>Dear Candidate If you complete your Address Then You Can Update only If You Need...</i></b></p></marquee>
            </div>
              </div>
        </div>

    <div class="container">
      <h2>Address Field</h2>

      <?php
        if (isset($insertAdd)) {
            echo $insertAdd;
        }
      ?>
        <div class="row">
      
          <form action="" method="post">
            <div class="col-md-6">

                  <label for="sel1">Divission</label>
                    <select class="form-control" id="sellect" name="divId">
                      <option>Select Divission</option>
                      <?php
                        $getDiv = $add->getDivission();
                        if ($getDiv) {
                            while ($value = $getDiv->fetch_assoc()) {
                       
                         
                      ?>
                      <option value="<?php echo $value['divId'];?>" ><?php echo $value['divName'];?></option>
                     <?php } } ?>
                    </select>
                    <br>

                     <label for="sel1">District</label>
                    <select class="form-control" id="sellect" name="distId">
                      <option>Select District</option>
                      <?php
                        $getDis = $add->getDistrict();
                        if ($getDis) {
                            while ($value = $getDis->fetch_assoc()) {
                       
                         
                      ?>
                      <option value="<?php echo $value['distId'];?>" ><?php echo $value['distName'];?></option>
                     <?php } } ?>
                    </select>


                    <br>
                    <label for="sel1">Thana</label>
                    <select class="form-control" id="sellect" name="thId">
                    <option>Thana</option>
                     <?php
                        $getTh = $add->getThana();
                        if ($getTh) {
                            while ($value = $getTh->fetch_assoc()) {
                       
                         
                          ?>
                      <option value="<?php echo $value['thId'];?>"><?php echo $value['thName'];?></option>
                    <?php } } ?>
                    </select>
                    <br>
                    <label for="sel1">Post</label>
                    <select class="form-control" id="sellect" name="postId">
                      <option>Post</option>
                      <?php
                        $getPost = $add->getpostName();
                        if ($getPost) {
                            while ($value = $getPost->fetch_assoc()) {
                       
                         
                          ?>
                        <option value="<?php echo $value['postId'];?>"><?php echo $value['postName'];?></option>
                      <?php } } ?>
                    </select>    
                    <br>
                    <label for="sel1">Post Code</label>
                    <select class="form-control" id="sellect" name="codeId">
                      <option>Post</option>
                      <?php
                        $getPost = $add->getPCode();
                        if ($getPost) {
                            while ($value = $getPost->fetch_assoc()) {
                       
                         
                          ?>
                        <option value="<?php echo $value['codeId'];?>"><?php echo $value['codeNum'];?></option>
                      <?php } } ?>
                    </select>  
                    <br>
                    <input type="submit" name="submit" value="Submit">  
            </div>

          
                </form>
               
          </div>
</div>
      

<?php include_once "inc/footer.php";?>

  