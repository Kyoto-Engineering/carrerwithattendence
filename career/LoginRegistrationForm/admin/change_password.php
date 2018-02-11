<?php include_once "inc/header.php";?>
<?php include_once "../Classes/module.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>   

<?php
$adminId = Session::get("adminId");
$allM = new Module();
  if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['create'])) {
    $changepass = $allM->changeUserpass($_POST, $adminId);
  }
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Control panel
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      

      
      <!-- Main row -->
      <div class="row wrapone">
      <h3>Change Password</h3>
      <?php 
        if (isset($changepass)) {
          echo $changepass;
        }
      ?>
        <form action="" method="post">
        
        
        
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
        
     <br><br>

      <p>
        <button type="submit" name="create" class="btn upbtn btn-primary">Change</button>
      </p>
</form>
        
      </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 