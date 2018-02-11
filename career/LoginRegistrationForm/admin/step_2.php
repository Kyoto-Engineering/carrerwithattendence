<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <?php include_once "../Classes/stepclass.php";?>
      <?php include_once "../Classes/module.php";?>
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->


  <?php 
  $allS = new Steps();
    $allM = new Module();
  ?>
  <?php
  
  if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $userId = $_POST['userId'];
        $jId = $_POST['jId'];
        $info   = $_POST['info'];
        $userjob = $allS->sendProcess($userId, $jId, $info);
    }
  ?>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> (STEP-02) Resume Status </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      
      <br/><br/><br/>
      
      <!-- Main row -->
      <div class="row">
<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col"></th>
      <th scope="col">Shortlisted</th>
     <!--<th scope="col">Ref.</th> -->
      <th scope="col">Info</th>
      <th scope="col">Add</th>
      <th scope="col">Sec <br> Edu</th>
      <th scope="col">H.Sec <br>Edu</th>
      <th scope="col">Under <br> Grad</th>
      <th scope="col">Post <br> Grad</th>
      
      <th scope="col">Reject</th>

    </tr>
  </thead>
  <tbody>
      <?php 
      $getapply = $allS->getallData();
      if ($getapply) {
        $i = "0";
        while ($data = $getapply->fetch_assoc()) {
          $i++;
    ?>
    <tr>
    <?php
        $userId = $data['userId'];
        $jId = $data['jId'];
    ?>
      <th scope="row"><?php echo $i;?></th>

      <td> <a href="applicant_details.php?user=<?php echo urlencode($userId);?>;&amp;jId=<?php echo urlencode($jId);?>"><?php echo $data['userName']?></a></td>
<form action="" method="post">
        <td>
       <input type="hidden" name="userId" value="<?php echo $userId?>" />
       <input type="hidden" name="jId" value="<?php echo $jId?>"/>
        <input type="hidden" name="info" value="1"/>
      

        <input type="submit" name="submit" value="Send Pr. Note">
        </td>
         

      </form> 
<?php 
      $getslist = $allS->getallshortlisted($userId, $jId);
      if ($getslist) {
      while ($value = $getslist->fetch_assoc()) {
          
?>
<?php
if ($value['status'] == "1") {?>
  <td><p><span style="color:green;"  class="glyphicon glyphicon-ok"></span></p></td>
<?php } else{?>
      <td><p><span style="color:red;"  class="glyphicon glyphicon-remove"></span></p></td>
      <?php } ?>
<?php } } ?>


<?php
$getinfo = $allS->getallInfo($userId);
if ($getinfo) {?>
  <td><p><span style="color:green;"  class="glyphicon glyphicon-ok"></span></p></td>
<?php }else{?>
    <td><p><span style="color:red;"  class="glyphicon glyphicon-remove"></span></p></td>
<?php } ?>


    <?php 
      $getadd = $allS->getalladdress($userId);
      
          
    ?>
    <?php
      if ($getadd) {?>
        <td><p><span style="color:green;"  class="glyphicon glyphicon-ok"></span></p></td>
      <?php }else{?>
        <td><p><span style="color:red;"  class="glyphicon glyphicon-remove"></span></p></td>
    <?php } ?>


<?php
$getssc = $allS->getallssc($userId);

$getvoc = $allS->getallvocational($userId);
$getolvol = $allS->getallolevel($userId);

?>

<?php 
  if ($getssc || $getvoc || $getolvol) {?>
    <td><p><span style="color:green;"  class="glyphicon glyphicon-ok"></span></p></td> 
 <?php }else{?>
   <td><p><span style="color:red;"  class="glyphicon glyphicon-remove"></span></p></td>
<?php } ?>


<?php
 $gethsc = $allS->getallhsc($userId);

$getdiploma = $allS->getalldiploma($userId);
$getalevel = $allS->getallAlevel($userId);

?>
<?php 
  if ($gethsc || $getdiploma || $getalevel) {?>
    <td><p><span style="color:green;"  class="glyphicon glyphicon-ok"></span></p></td> 
 <?php }else{?>
   <td><p><span style="color:red;"  class="glyphicon glyphicon-remove"></span></p></td>
<?php } ?>

<?php
$getugrad = $allS->getallugrad($userId);

$getother = $allS->getgradOther($userId);
?>
<?php 
  if ($getugrad || $getother) {?>
  <td><p><span style="color:green;"  class="glyphicon glyphicon-ok"></span></p></td> 
 <?php }else{?>
   <td><p><span style="color:red;"  class="glyphicon glyphicon-remove"></span></p></td>
<?php } ?>
        



<?php
$getpgrad = $allS->getallpgrad($userId);
$getpother = $allS->getpgradOther($userId);
?>
<?php 
  if ($getpgrad || $getpother) {?>
  <td><p><span style="color:green;"  class="glyphicon glyphicon-ok"></span></p></td> 
 <?php }else{?>
   <td><p><span style="color:red;"  class="glyphicon glyphicon-remove"></span></p></td>
<?php } ?>
    


 <?php
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['reject'])){
  $uId = $_POST['uId'];
  $jId = $_POST['jId'];
  
 

  $applyHis = $allS->rejectoHistory($uId, $jId);
  $delectapp = $allS->deleteoapply($uId, $jId);
  $delect = $allS->deleteodeselect($uId, $jId);
  
}
?>


   <form action="" method="post"> 
    <td>
       <input type="hidden" name="uId" value="<?php echo $userId?>" />
       <input type="hidden" name="jId" value="<?php echo $jId?>"/>

        <input type="hidden" name="info" value="1"/>
      

        <input type="submit" name="reject" value="Reject">
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