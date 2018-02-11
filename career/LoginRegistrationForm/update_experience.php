<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 
  $add = new Address();
  $uId = Session::get('userId');
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $updateExp = $add->expUpdate($_POST, $uId);
    }
 
?>


        
<div class="container">
    <a href="view_exp.php"><button type="submit" name="" class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Go Back</button></a>
        <?php
            if(isset($updateExp)){
                echo $updateExp;
            }
        ?>
        <div id="adminForm" style="margin:10px">
        <?php
        $editExp= $add->editAllExp($uId);
        if ($editExp) {
            while ($data=$editExp->fetch_assoc()) {
                
            
        

        ?>
            
            <form action="" method="post" class="container">
                
                <p>
                    <label> <h2> Work Experience Details </h2> </label>
                </p>
                
                <br>
                
                <p>
                    <label>Name of Company</label>
                    <input class="form-control" type="text" id="usr" name="companyName" value="<?php echo $data['companyName'] ?>" required>
                </p>
                
                <br>
                
                <p>
                    <label>Designation</label>
                    <input class="form-control" type="text" id="usr" name="designation" value="<?php echo $data['designation'] ?>" required>
                </p>
                
                <br>
                
                <p>
                    <label>Employment Length (in Months)</label>
                    <input class="form-control" type="text" id="usr" name="workingPeriod" value="<?php echo $data['workingPeriod'] ?>"required>
                    
                    <!--<input class="w3-radio" type="radio" name="length" value="day">
                    <label>Day(s)</label>
                    
                    <input class="w3-radio" type="radio" name="length" value="week">
                    <label>Week(s)</label>
                    
                    <input class="w3-radio" type="radio" name="length" value="month">
                    <label>Month(s)</label>-->
                </p>
                
                <br>
                
                                
                <p>
                    <button class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding" type="submit" name="submit" class="btn btn-default">Update</button>
                </p>
                
            </form>
            <?php } } ?>
        </div>
</div>
        






















<?php include_once "inc/footer.php";?>