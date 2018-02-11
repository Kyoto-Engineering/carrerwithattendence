<?php include_once "inc/header.php";?>
<?php include_once "../Classes/interviewclass.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    

<?php
$allM = new Interview();
  if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['create'])) {
    $adduser = $allM->createBoardname($_POST);
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
      <h3>Create Interviewe Board Name</h3>
      <?php
        if (isset( $adduser)) {
          echo  $adduser;
        }
      ?>
        <form action="" method="post">
        <div class="form-group">
          <label for="usr"></label>
          <input type="text" name="boardname" class="form-control" id="usr" placeholder="Create Board Name...">
        </div>
        
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