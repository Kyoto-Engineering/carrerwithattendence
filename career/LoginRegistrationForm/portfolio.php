<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>


<?php 

      $add = new Address();

?>
<?php
        $userId = Session::get("userId");
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
            $infoAdd = $add->portfolio($_POST , $userId);
        }
 
?>

<?php
     
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['academic'])) {
            
               $infoAdd = $add->portfolio($_POST , $userId);
             $status = $_POST['status'];
             $updatePort = $add->statUpdatePort($status , $userId);
        }
 
?>
<?php
if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['info'])){
    $status = $_POST['status'];
    $updatew = $add->portfoliostatupdate($status, $userId);
  }
?>




 <div class="container">
        <div class="row">
        <div class="col-md-10">
            <h2> My Portfolio </h2>
             <?php
                if (isset($infoAdd)) {
                    echo $infoAdd;
                }
            ?>

            <form action="" method="post" >
                <p>
                    <label>Portfolio Link</label>
                    <input class="form-control" id="usr" type="url"  name="link" placeholder="Your Portfolio Link" required>
                </p>
                
                <br>
                <p>
                    <label>UserId (if any)</label>
                    <input class="form-control" id="usr" type="text"  name="uId" placeholder="userId" >
                </p>
                <p>
                    <label>Password (if any)</label>
                    <input class="form-control" id="usr" type="text"  name="password" placeholder="password" >
                </p>

                 <p>
                      <div class="row">
              <div class="col-md-4">
               <input class="form-control"  type="hidden" name="status" value="1"/> 
            <input type="submit" name="academic" value="My portfolio Ends Here" class="btn btn-primary" >
             </div>
              <div class="col-md-4" style="margin-left: -50px;">
                <button type="submit" name="submit"  class="btn btn-primary">I have More link to Input</button>
                
            </div>
                </form>
               
        </div>
        </p>
        
         <form action="" method="post">
            
            <div class="col-md-3" style="margin-left: 720px; margin-top:-43px;">
               <input  type="hidden" name="status" value="1"/> 
            <input type="submit" name="info" value="I have No portfolio" class="btn btn-primary" >
             </div>
             
             </form>
        </div>
        </div>
        
      





<?php include_once "inc/footer.php";?>