<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 

      $add = new Address();
      $userId = Session::get("userId");
        
      

?>
<div class="container">
<?php
         $getstatinfo=$add->getAllStattraining($userId) ;
         if ($getstatinfo) {
          
         while ($data = $getstatinfo->fetch_assoc()) {
?>
 <?php
        if ($data['status']=="1") { 
          echo " <span style='color:green;'> <center> <h2>Thank You for Completing This Section.</h2></center></span>";

         $getinfo=$add->getTraining($userId);
         if ($getinfo) {
        $i = "0";
          
         while ($value = $getinfo->fetch_assoc()) {
            $i++;
        ?>



       

        <div class="container">
       
        <div class="row">
        
        
        
        <div class="col-md-4">
            <h2> Professional Training </h2>
             <h5>Professional Training :<?php echo $i ; ?> </h5>
            <h5>Training Institution:<?php echo $value['tInstitution'] ; ?> </h5>
            <h5>Training Name:<?php echo $value['trainingName'] ; ?> </h5>
            <h5>Training Topic:<?php echo $value['tTopic'] ;?> </h5>
            <h5>Training Length:<?php echo $value['tLenth'] ;?> </h5>
              <h5>Starting Month:<?php echo $value['sMonth'] ;?> </h5>
            <h5>Ending Month:<?php echo $value['eMonth'] ;?> </h5>

            
           

             
            </div>
            <div class="col-md-8">
        <br/><br/>
               <p>
                   <a href="update_training.php">
                    <button type="button" class="btn btn-default">
                      <span class="glyphicon glyphicon-pencil"></span> Update My professional Training
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
 $getinfo=$add->getTrainingperson($userId) ;
if (!$getinfo) { 
 echo "<span style='color:red;'><center><h2>You have not Completed This Section</h2></center></span>";
}
?>
<?php 
 $getinfo=$add->getTrainingperson($userId) ;
if ($getinfo) { 
    while($data = $getinfo->fetch_assoc()){
?>

<?php  } } ?>
</div>


<?php include_once "inc/footer.php";?>