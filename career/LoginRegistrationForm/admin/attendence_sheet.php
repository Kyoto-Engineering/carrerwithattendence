<?php include_once "inc/header.php";?>
<?php include_once "../Classes/schedule.php";?>
<?php include_once "../helpers/Format.php"; ?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
<?php
  $time = new Schedule();
  $fm = new Format();
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      
      <ol class="breadcrumb">
       
        <li class="active"></li>
        <form action="" method="post">
        <input class ="form-control" type="date" name="date"><input type="submit" name="search" value="search">       

      </form>
      </ol>
      
    </section>

    <!-- Main content -->
    <section class="content">
       <A HREF="javascript:window.print()"><button class="btn btn-success btn-sm">
      <span class="glyphicon glyphicon-print"></span> Print </button>
    </A> 
      <!-- Main row -->
      <div class="row">
        <div class="panel">
          <div class="table-bordered table-responsive text-center">

            <table class="table table-bordered" style="border: 1px solid: #ddd !important;">
                <h1><center>Kyoto Engineering & Automation Ltd.</center></h1>
      <h4><center>Attendence Record</center></h4>
      
      <h5 style="float:right; margin-top: 0px; margin-right: 30px; margin-bottom: 20px;"></h5>
                <thead> 
                      <th>Id</th>
                      <th>UserId</th>
                      <th>Name</th>
                      <th>JobTitle</th>
                     <th>Time</th>
                      <th>Email</th>
                      
                      <th>Image</th>
                      
                      <th>Signature</th>
                </thead>
                <tbody> 
                <?php
                  if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['search'])) {
                  $date = $_POST['date'];
                  $getlist = $time->getApplicant($date);
                  if ($getlist) {
                    while ($data = $getlist->fetch_assoc()) {
                      
                ?>
                    <tr>
                        <?php
                          $uId = $data['userId'];
                        ?>
                          <td><?php echo $data['id']?></td>
                          <td><?php echo $data['userId']?></td>
                          <td><?php echo $data['userName']?></td>
                          <td><?php echo $data['jobtitle']?></td>
                          
                          
                         
                          <td><?php echo $fm->formatTime($data['starttime'])?></td>
                          <?php 
                            $getimg = $time->getAllApplicantImage($uId);
                              if ($getimg) {
                              while ($data = $getimg->fetch_assoc()) {
                          ?>
                           <td><?php echo $data['email']?></td>
                          <td><img src="../<?php echo $data['image']?>" alt="NO IMAGE" height="auto" width="50px"></td>
                          <?php } } ?>
                         
                          <td></td>

                    </tr>
                <?php } } }?> 
                </tbody>
            </table>

    </div>
</div>
      </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 


