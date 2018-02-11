<?php include_once "inc/header.php";?>
<?php include_once "../Classes/module.php";?>
<?php
  $allM = new Module();
  $adminId = Session::get("adminId");
?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    

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

      <!-- Main row -->
      <div class="row"">
      <div class="col-md-4">
        <div class="picture">
        <?php 
          $getdata = $allM->getdetails($adminId);
          if ($getdata) {
            while ($data = $getdata->fetch_assoc()) {
              
        ?>
            <img src="<?php echo $data['image'];?>" height="auto" width="150px">
        <?php } } ?>
         <?php 
    if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['submit'])) {
      $addImage = $allM->uploadPropicture($adminId, $_FILES);
    }
?>
        <div class="row">
          <?php 
            if (isset($addImage)) {
              echo $addImage;
            }
          ?>
            <form action="" method="post" enctype="multipart/form-data">
              <div class="row">
                  <div class="col-md-8 text-center colm">
                    <div class="col-sm-12 colm2" style="margin-bottom:20px;">
                      <label class="btn-bs-file btn btn-sm btn-primary">           
                        <input type="file" name="image" />
                        
                      </label>
                      <br>
                      <input class="buton" type="submit" name="submit" value="Upload"/>
                  </div>
              </div>


          
          
          </form>
        </div>
        </div>
      </div>
     
        </div>
      <div class="col-md-8">
       <p  style="float:right;">
       <a href="change_password.php">
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> Change Password 
        </button>
        </a>
      </p>
     </div>
         <div class="row">
          
        <?php 
          $getdata = $allM->getdetails($adminId);
          if ($getdata) {
            while ($data = $getdata->fetch_assoc()) {
              
        ?>
        <div class="col-md-8">
          <p>Name: <?php echo $data['uname'];?></p>
          <p>email: <?php echo $data['email'];?></p>
          <p>Designation: <?php echo $data['designation'];?></p>
          <p></p>

          </div>
      <?php } } ?>
         </div>  
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 