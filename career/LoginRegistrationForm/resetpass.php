
<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>
<?php include_once "Classes/frontclass.php";?>
<?php include_once "lib/Database.php"; ?>
    
<?php
$uId = Session::get("regId");
$allF = new Front();
  if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['create'])) {
    $changepass = $allM->changeUserpass($_POST, $uId);
  }
?>
<div class="container">
<div class="class" style="background-color: #eee; margin:0 auto; width: 40%; padding: 20px 30px; border-radius:5px; border:1px solid gray;">
 <form action="" method="post">
 <h3>Change Your Password</h3>
       <?php 
        if (isset($changepass)) {
          echo $changepass;
        }
      ?>
        <div class="form-group">
          <label for="usr"></label>
          <input type="password" name="oldpass" class="form-control" id="usr" placeholder="Old Password...">
        </div>
        <div class="form-group">
          <label for="usr"></label>
          <input type="password" name="newpass" class="form-control" id="usr" placeholder="New Password...">
        </div>
        <div class="form-group">
          <label for="usr"></label>
          <input type="password" name="confirmpass" class="form-control" id="usr" placeholder="Confirm Password...">
        </div>

        <input type="submit" name="create" value="Reset Password">
      
       <!--  <button type="submit" name="create" class="btn upbtn btn-primary">Change</button> -->
      
</form>
</div>
</div>
<?php include_once "inc/footer.php";?>
