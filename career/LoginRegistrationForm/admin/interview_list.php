<?php include_once "inc/header.php";?>
<?php include_once "../Classes/module.php";?>
<?php include_once "../Classes/interviewclass.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <?php
  $allM = new Module();
  $allI = new Interview();
    if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['submit'])) {
      $uId = $_POST['uId'];
      $board = $allM->createBoard($_POST, $uId);
    }
  ?>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Control panel
       
      </h1>
      <span style="color:green;">
      <?php
        if (isset($board)) {
          echo $board;
        }
      ?>
      </span>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->   
      <!-- Main row -->
     
      <div class="row">
          <table class="table table-striped">
    <thead>
      <tr>
        <th>SL</th>
        <th>Name</th>
        <th>Email</th>
        <th>Designation</th>
        <th>Date</th>
      </tr>
    </thead>
    <tbody>
     <?php
      $allM = new Module();
        $getuser = $allM->getInterviewer();
        if ($getuser) {
          $i = '0';
          while($data = $getuser->fetch_assoc()){
            $i++;

      ?>
      <tr>
        <td><?php echo $i; ?></td>
        <td><?php echo $data['uname']?></td>
         <td><?php echo $data['email']?></td>
          <td><?php echo $data['designation']?></td>
    <form action="" method="post">
        <td>  <select class="form-control" id="exampleFormControlSelect1" name="id">
                <option>Select Interview Board Name</option>
                <?php
                  $getgp = $allI->getAllBoardname();
                  if ($getgp) {
                    while ($value = $getgp->fetch_assoc()) {
                      
                ?>
                  <option value="<?php echo $value['id'];?>" ><?php echo $value['boardname'];?></option>
                 <?php } } ?>
                </select></td>
        <td>
        <input type="hidden" name="uId" value="<?php echo $data['id']?>">
        <input type="submit" name="submit" value="Select">

        </td>
    </form>
      </tr>
     <?php } } ?>
    </tbody>
  </table>
      </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 