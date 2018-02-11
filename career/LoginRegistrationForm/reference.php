<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>
<?php include_once "Classes/frontclass.php";?>
<?php
$front=new Front();
$add=new Address();



?>
<?php 
 
  $uId = Session::get('userId');
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $insertReference = $front->refInsert($_POST, $uId);
    }
 
?>
<?php
     
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['academic'])) {
            
             $insertExp = $front->refInsert($_POST, $uId);
             $status = $_POST['status'];
             $updateRef = $add->statUpdateRef($status , $uId);
        }
 
?>
<?php
if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['info'])){
    $status = $_POST['status'];
    $updatew = $add->refstatUpddate($status, $uId);
  }
?>



       

        <div class="container">
            <div class="col-sm-6" id="adminForm">
            <h2>References</h2>
            <h5> <span style="color:red">A reference is a dignified personality who may recommend a candidate for a job in our company. Please note that reference has got confidential criteria for acceptance by the Recruitment Authority. Acceptance of you Reference is subject to Management Discretion.</span></h5>
            <br>
           
            <form action="" method="post">
                <p>
                    <label> Name</label>
                    <input class="form-control" id="usr" type="text" name="name" placeholder="Your Referee Name" >
                </p>
                
                <br>
                
                <p>
                    <label> Organization </label>
                    <input class="form-control" id="usr" type="text" name="organization" placeholder="Your Referees Organization" required>
                </p>
                
                <br>
                
                <p>
                    <label> Designation </label>
                    <input class="form-control" id="usr" type="text" name="designation" placeholder="Your Referees  Designation" >
                </p>
                
                <br>
                
                <p>
                    <label> Email </label>
                    <input class="form-control" id="usr" type="email" name="email" placeholder="Your Referees Email" >
                </p>
                
                <br>
                
                <p>
                    <label> Phone </label>
                    <input class="form-control" id="usr" type="text" name="phone" placeholder="Your Referees Phone" >
                </p>
                
                <br>
                
                <p>
                <label> Specialization </label><br/>
                   <select class="form-control" id="exampleFormControlSelect1" name="specialization">
                   <option> Select Your Referees Specialization</option>
                   <?php
                                                 $getsp =  $front->getspecilization();
                                                    if ($getsp) {
                                                    while ($value = $getsp->fetch_assoc()) {
                                                 ?>
                     <option value="<?php echo $value['spId'];?>" ><?php echo $value['specialization'];?></option>
                      <?php } } ?>

                   </select>
                
               
                </p>
                 <br/>
                 <p>
                <label> Relationship </label><br/>
                   <select class="form-control" id="exampleFormControlSelect1" name="relationship">
                   <option > Select Your Relationship with Referees </option>
                    <?php
                                                 $getsp =  $front->getrelationship();
                                                    if ($getsp) {
                                                    while ($value = $getsp->fetch_assoc()) {
                                                 ?>
                   <option value="<?php echo $value['id'];?>" ><?php echo $value['relationType'];?></option>
                    <?php } } ?>
                   </select>
                   </p>
                
                <br>

                
             
                
                <p> 
                                     <label for="sel1">District</label>
                                        <select class="form-control" id="sellect" name="distId">
                                          <option>Refrees District</option>
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
                                          <option>Refrees Thana</option>
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
                                          <option>Refrees Post Office</option>
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
                

                
                                    
                
               <p><span style='color:red'>Note: I agree and hereby I authorise your company to send a verification note to the
referee in any form</span></p>
                
                               
               <div class="row">
              <div class="col-md-4">
               <input class="form-control"  type="hidden" name="status" value="1"/> 
            <input type="submit" name="academic" value="My References Ends Here" class="btn btn-primary" >
             </div>
              <div class="col-md-4" >
               <input class="form-control"  type="hidden" name="status" value="1"/> 
                <button type="submit" name="submit"  class="btn btn-primary">I have Another References to Input</button>
                
            </div>
            </div>
                
                <br>
            </form>
        </div>

        <form action="" method="post">
            
            <div class="col-md-3" style="margin-left: 720px; margin-top:-43px;">
               <input  type="hidden" name="status" value="1"/> 
            <input type="submit" name="info" value="I have No References" class="btn btn-primary" >
             </div>
             
             </form>


        </div>
        
            
            
    
        









<?php include_once "inc/footer.php";?>