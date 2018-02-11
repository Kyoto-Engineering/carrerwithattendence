<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 
  $add = new Address();
  $uId = Session::get('userId');
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $insertExp = $add->expInsert($_POST, $uId);
    }
 
?>
<?php
     
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['academic'])) {
            
             $insertExp = $add->expInsert($_POST, $uId);
             $status = $_POST['status'];
             $updateExp = $add->overallstat($status , $uId);
        }
 
?>

<?php
     
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['info'])) {
            
             
             $updatew = $add->workstatUpddate($status, $uId);
        }
 
?>

        
<div class="container">
        <?php
            if(isset($insertExp)){
                echo $insertExp;
            }
        ?>
        <div id="adminForm" style="margin:10px">
            
            <form action="" method="post" class="container">
                
                <p>
                    <label> <h2> Work Experience Details </h2> </label>
                </p>
                
                <br>
                
                <p>
                    <label>Name of Company</label>
                    <input class="form-control" type="text" id="usr" name="companyName" placeholder="Name of the company of your previous employment" required>
                </p>
                
                <br>
                
                <p>
                    <label>Designation</label>
                    <input class="form-control" type="text" id="usr" name="designation" placeholder="Your designation during the employment period" required>
                </p>
                
                <br>
                
                <p>
                    <label>Employment Length (in Months)</label>
                    <input class="form-control" type="text" id="usr" name="workingPeriod" placeholder="Length of your employment" required>
                    
                    <!--<input class="w3-radio" type="radio" name="length" value="day">
                    <label>Day(s)</label>
                    
                    <input class="w3-radio" type="radio" name="length" value="week">
                    <label>Week(s)</label>
                    
                    <input class="w3-radio" type="radio" name="length" value="month">
                    <label>Month(s)</label>-->
                </p>
                <p>
                    <label>Starting Month</label>
                    <input class="form-control" type="text" id="usr" name="sMonth" placeholder="Your Starting Month" required>
                </p>
                
                <br>
                <p>
                    <label>Ending Month</label>
                    <input class="form-control" type="text" id="usr" name="eMonth" placeholder="Your Ending Month " required>
                </p>
                
                
                <br>
                
                                
                <div class="row">
              <div class="col-md-4">
               <input class="form-control"  type="hidden" name="status" value="1"/> 
            <input type="submit" name="academic" value="My Working Experience Ends Here" class="btn btn-primary" >
             </div>
              <div class="col-md-4" style="margin-left: -50px;">
               <input class="form-control"  type="hidden" name="status" value="1"/> 
                <button type="submit" name="submit"  class="btn btn-primary">I have More Working Experience to Input</button>
                
            </div>
            </div>
                
            </form>
        </div>
        
        <form action="" method="post">
            
            <div class="col-md-4">
               <input class="form-control"  type="hidden" name="status" value="1"/> 
            <input type="submit" name="info" value="I've No Experience" class="btn btn-primary" >
             </div>
             
             </form>
</div>
        






















<?php include_once "inc/footer.php";?>