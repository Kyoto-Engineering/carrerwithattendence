<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 

      $add = new Address();
      $userId = Session::get("userId");
        
      

?>
<div class="container">
<h3><center>Work Experience</center></h3>
<?php
         $getstatinfo=$add->getAllStatExp($userId) ;
         if ($getstatinfo) {
          
         while ($data = $getstatinfo->fetch_assoc()) {
?>
     <?php
        if ($data['status']=="1") { 
          echo " <span style='color:green;'> <center> <h2>Thank You for Completing This Section.</h2></center></span>";

          $getexp = $add->getAllExp($userId);
           if ($getexp) {
              $i = "0";
          
         while ($value = $getexp->fetch_assoc()) {
            $i++;
        ?>
        
          <div class="container">
         
        <div class="row">
        
       
        <div class="col-md-4">
            <h5>Working Experience :<?php echo $i ; ?> </h5>
            <h5>Company Name:<?php echo $value['companyName'] ; ?> </h5>
            <h5>Designation:<?php echo $value['designation'] ;?> </h5>
             <h5>Starting Month:<?php echo $value['sMonth'] ;?> </h5>
            <h5>Ending Month:<?php echo $value['eMonth'] ;?> </h5>
            <h5>Employment Length:<?php echo $value['workingPeriod'] ; ?> </h5>
           
            
            
           

             
            </div>
     
        <div class="col-md-8">
        <br/><br/>
               <p>
                   <a href="update_experience.php">
                    <button type="button" class="btn btn-default">
                      <span class="glyphicon glyphicon-pencil"></span> Update My Working Experience
                    </button>
                    </a>
               </p>
           </div>
</div>
</div>
       

       
   <?php 
        } } } 
         ?>     
   


 <?php } } ?>      
<br/><br/>

<?php 
 $getinfo=$add->getExpperson($userId) ;
if (!$getinfo) { 
 echo "<span style='color:red;'><center><h2>You have not Completed This Section</h2></center></span>";
}
?>

</div>


<?php include_once "inc/footer.php";?>