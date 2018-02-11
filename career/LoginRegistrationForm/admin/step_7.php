<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
 <?php include_once "../Classes/stepclass.php";?>
<?php include_once "../helpers/Format.php";?>
<?php
$fm = new Format();
$allS = new Steps();
?>

<?php
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['preselect'])){
  $uId = $_POST['uId'];
  $jId = $_POST['jId'];
  $prestatus = $_POST['prestatus'];
  $preselect = $allS->preselectPerson($prestatus, $uId, $jId);
}
?>
<?php
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['deselect'])){
  $uId = $_POST['uId'];
  $jId = $_POST['jId'];
  $deselect = $_POST['destatus'];
  $deselect = $allS->deselectPerson($deselect, $uId, $jId);

  $applyHis = $allS->applyHistory($uId, $jId);

  $delect = $allS->deletedeselect($uId, $jId);
}
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       (Step-07)->List Of Participated Candidates
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <?php
      if (isset($preselect)) {
        echo $preselect;
      }
      if (isset($delect)) {
        echo $delect;
      }

      ?>
      <br/><br/><br/>
      
          
      <!-- /.row -->

      
      <!-- Main row -->
      <div class="row">
<table class="table">
    <thead>
      <tr>
        <th>Sl</th>
        <th>Name</th>
        <th>JobTitle</th>
         <th>Batch</th>
        <th>InterviewDate</th>
        <th>HR Response</th>
        <th>User Response</th>
        
      </tr>
    </thead>
    <tbody>
    <?php
      $success = $allS->getallpresent();
      if ($success) {
        $i = "0";
        while ($data = $success->fetch_assoc()) {
         $i++;
    ?>
    <tr>
        <?php
            $uId = $data['userId'];
            $jId = $data['jId'];
          ?>
      <td><?php echo $i;?></td>
      <td><a href="applicant_details.php?user=<?php echo urlencode($uId);?>;&amp;jId=<?php echo urlencode($jId);?>"><?php echo $data['userName'];?></a></td>
      <td><?php echo $data['jobtitle'];?></td>
       <td><?php echo $data['batch'];?></td>
      
      <td><?php echo $data['interviewdate'];?></td>

      <td>
        <?php
         $getpre = $allS->getPreselect($uId, $jId);
         if($getpre){
             while($data =  $getpre->fetch_assoc()){
        ?>
        <?php
        if($data['preselect'] == "1"){
            echo "<span style='color:green;'>Pre-Selected</span>";
        }elseif($data['preselect'] == "2"){
            echo "<span style='color:green;'>Selected</span>";
        }elseif($data['deselect'] == "1"){
            echo "<span style='color:red;'>Rejected</span>";
        }
        ?>
        <?php } } ?>
      </td>
      <td>
        <?php
         $getpre = $allS->getPreselect($uId, $jId);
         if($getpre){
             while($data =  $getpre->fetch_assoc()){
        ?>
        <?php
        if($data['jobstatus'] == "1"){
            echo "<span style='color:green;'>Accept Selection</span>";
        }elseif($data['jobstatus'] == "2"){
            echo "<span style='color:red;'>Reject Selection</span>";
        }else{
            
        }
        ?>
        <?php } } ?>
      </td>
      <td>
      <form action="" method="post">
          <input type="hidden" name="uId" value="<?php echo $data['userId'];?>">
          <input type="hidden" name="jId" value="<?php echo $data['jId'];?>">
          <input type="hidden" name="prestatus" value="1">
          <input type="submit" name="preselect"  value="Pre-Select"/> </a>
      </form></td>

      <td>
          <form action="" method="post">
          <input type="hidden" name="uId" value="<?php echo $data['userId'];?>">
          <input type="hidden" name="jId" value="<?php echo $data['jId'];?>">
          <input type="hidden" name="destatus" value="2">
        <input type="submit" name="deselect" value="Reject"/> </a>
      </form>
         

      
     
      </td>
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