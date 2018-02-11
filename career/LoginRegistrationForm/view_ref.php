<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 

      $add = new Address();
      $userId = Session::get("userId");

?>

<div class="container">
<h3><center>References</center></h3>
<?php
         $getstatinfo=$add->getAllStatRef($userId) ;
         if ($getstatinfo) {
          
         while ($data = $getstatinfo->fetch_assoc()) {
?>
<?php
        if ($data['status']=="1") { 
          echo " <span style='color:green;'> <center> <h2>Thank You for Completing This Section.</h2></center></span>";

         $getinfo=$add->getRef($userId);
         if ($getinfo) {
        $i = "0";
          
         while ($value = $getinfo->fetch_assoc()) {
            $i++;
        ?>
 



          <div class="container">
         
        <div class="row">
   
       
          <div class="col-md-4">
           <?php
            if($value['stat'] == "1"){
                echo "<h3><span style= 'color:green'>Verified By Refree</span></h3>";
            }elseif($value['stat'] == "2"){
                
                echo "<h3><span style= 'color:red'>Rejected By Refree</span></h3>";
            }else{
                echo "<h3><span style= 'color:blue'>Pending For Refrees confirmation</span></h3>";
            }
           ?>
            <h5> Name:<?php echo $value['name'] ; ?> </h5>
            <h5>Organization:<?php echo $value['organization'] ; ?> </h5>
            <h5>Designation:<?php echo $value['designation'] ;?> </h5>
            <h5>Email:<?php echo $value['email'] ;?> </h5>
            <h5>Phone:<?php echo $value['phone'] ;?> </h5>
             <h5>Specialization:<?php echo $value['specialization'] ;?> </h5>
            <h5>Relationship:<?php echo $value['relationType'] ;?> </h5>
            
            
  
        </div>
     
       
       
        
   
</div>
</div>
       
<?php } } } ?>
  <?php } } ?>
             
<br/><br/>

<?php 
 $getinfo=$add-> getRefer($userId) ;
if (!$getinfo) { 
 echo "<span style='color:red;'><center><h2>You have not Completed This Section</h2></center></span>";
}
?>

</div>


<?php include_once "inc/footer.php";?>