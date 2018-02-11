<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 
  $add = new Address();
  $uId = Session::get('userId');
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $updateTraining = $add->trainingUpdate($_POST, $uId);
    }
 
?>

        
<div class="container">
    <a href="view_professional.php"><button type="submit" name="" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Go Back</button></a>
        <div>
            <h3 style="text-align:center"> Professional Training Inclusion Form</h3> <br>
          
        </div>
        <?php
            if (isset($updateTraining )) {
                echo $updateTraining ;
            }
        ?>

         <div class="row">
            <div class="col-md-6 ">
            <?php
        $editTraining= $add->editAllTraining($uId);
        if ($editTraining) {
            while ($data=$editTraining->fetch_assoc()) {
                
            
        

        ?>
            

            <form action="" method="post" class="container">
            <p>
                    <label>Training Institution</label>
                    <input class="form-control" id="usr" name="tInstitution" type="text" value="<?php echo $data['tInstitution'] ?>" required>
                </p>

           

                <p>
                    <label>Training Name</label>
                    <input class="form-control" id="usr" type="text" name="trainingName" value="<?php echo $data['trainingName'] ?>" required>
                </p>
                
                <br>
                
                <p>
                    <label>Training Topic</label>
                    <input class="form-control" id="usr" type="text" name="tTopic" value="<?php echo $data['tTopic'] ?>" required>
                </p>
                <p>
                    <label>Start Month</label>
                    <input class="form-control" id="usr" type="text" name="sMonth"  value="<?php echo $data['sMonth'] ?>" required>
                </p>
                <p>
                    <label>End Month</label>
                    <input class="form-control" id="usr" type="text" name="eMonth" value="<?php echo $data['eMonth'] ?>" required>
                </p>
                
                <br>
                
                <p>

                    <label>Training Length</label>
                    <input class="form-control" id="usr" type="text" name="tLenth"  value="<?php echo $data['tLenth'] ?>" required>
                </p>

                
                <br>
                
                                
                <p>
                    <button type="submit" name="submit" class="btn btn-default">Update</button>
                </p>
                
            </form>
             <?php } } ?>
            </div>
            <div class="col-md-6 col-md-offset-3"></div>
        </div> <!--row-->
</div>





<?php include_once "inc/footer.php";?>