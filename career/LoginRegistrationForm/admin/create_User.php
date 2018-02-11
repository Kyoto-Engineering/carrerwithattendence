<?php include_once "inc/header.php";?>
<?php include_once "../Classes/module.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    

<?php
$allM = new Module();
  if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['create'])) {
    $adduser = $allM->createNewUser($_POST);
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
      <div class="row wrapone" style="background-color: #358bba; width: 50%;   height: auto; margin: 0 auto; padding: 20px 25px; border-radius: 5px; color:#fff;">
      <h3>Create Interviewer</h3>
      <?php
        if (isset( $adduser)) {
          echo  $adduser;
        }
      ?>
        <form action="" method="post">
        <div class="form-group">
          <label for="usr"></label>
          <input type="text" name="uname" class="form-control" id="usr" placeholder="Create User Name...">
        </div>
        <div class="form-group">
          <label for="usr"></label>
          <input type="email" name="email" class="form-control" id="usr" placeholder="Create User Email...">
        </div>
        <div class="form-group">
          <label for="usr"></label>
          <input type="text" name="designation" class="form-control" id="usr" placeholder="Create User Designation...">
        </div>
        <div class="form-group">
          <label for="usr"></label>
          <input type="password" name="pass" class="form-control" id="usr" placeholder="Create Password...">
        </div>
        <div class="form-group">
          <label for="usr">Select Interview Date</label>
          <input type="date" name="datee" class="form-control" id="usr" placeholder="Assign Date...">
        </div>
     <br><br>
 <label>Slecet Your User Type</label>
    <br>
                    <input class="w3-radio" type="radio"   name="activity" value="1" checked>
                    <label>Super Admin</label>
                    &nbsp;
                    <input class="w3-radio" type="radio"   name="activity" value="2">
                    <label>HR</label>
                    &nbsp;
                    <input class="w3-radio" type="radio"   name="activity" value="3">
                    <label>Interviewer</label>
        <br><br>
      <p>
        <button type="submit" name="create" class="btn upbtn btn-primary">Create</button>
      </p>
</form>
        
      </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 