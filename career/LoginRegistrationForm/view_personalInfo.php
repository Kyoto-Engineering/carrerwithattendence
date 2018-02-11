<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 

      $add = new Address();
      $userId = Session::get("userId");
        
      

?>
 <?php
         $getinfo=$add->getPersonalInfo($userId);
         if ($getinfo) {

          
         while ($value = $getinfo->fetch_assoc()) {
          if ($value['status']=="1") {
            
        ?>

       

        <div class="container">
           
        <div class="row">
        <div> <h2 style="color:green;"> <center> Thank You for Completing This Section.</center></h2></div>
        
       
            <div class="col-md-6">
            <h2> Personal Information </h2>
            <h4>Full Name:&nbsp;<?php echo $value['perName'] ; ?> </h4>
             <h4>Father's Name:&nbsp;<?php echo $value['fName'] ; ?> </h4>
              <h4>Mother's Name:&nbsp;<?php echo $value['mName'] ; ?> </h4>
              <h4>Spouse Name:&nbsp;<?php echo $value['sName'] ; ?> </h4>
            
           
            <h4>Gender  :&nbsp;<?php echo $value['gender'] ; ?> </h4>
            <h4>National ID:&nbsp;<?php echo $value['nId'] ; ?> </h4>
            <h4>Marital Status:&nbsp;<?php echo $value['maritalStatus'] ; ?> </h4>
           

             
            </div>
        
           <div class="col-md-6">
               <p>
                   <a href="update_myInfo.php">
                    <button type="button" class="btn btn-default">
                      <span class="glyphicon glyphicon-pencil"></span> Edit My Information
                    </button>
                    </a>
               </p>
           </div>
         

</div>
 <?php } } } else{ ?>
 <div style="margin-bottom: 300px;margin-top:80px;">
<h2 style="color:red;"> <center>You have not Completed This Section.</center></h2>
</div>
 <?php } ?>

        </div>

<br/><br/>








<?php include_once "inc/footer.php";?>