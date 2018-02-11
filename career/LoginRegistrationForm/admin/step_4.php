<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    
 <?php include_once "../Classes/stepclass.php";?>
<?php include_once "../helpers/Format.php";?>
<?php
$fm = new Format();
$allS = new Steps();
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Participation Status
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      
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
        
      </tr>
    </thead>
    <tbody>
    <?php 
      $getcandidate = $allS->getApplicantforminterviewlist();
      if ($getcandidate) {
        $i = "0";
        while ($data = $getcandidate->fetch_assoc()) {
          $i++;
    ?>


      <tr>
      <?php
            $uId = $data['userId'];
            $jId = $data['jId'];
          ?>
           <td><?php echo $i;?></td>
        <td><a href="applicant_details.php?user=<?php echo urlencode($uId);?>;&amp;jId=<?php echo urlencode($jId);?>"><?php echo $data['userName']?></a></td>
        <td><?php echo $data['jobtitle']?></td>
        <td><?php echo $data['batch']?></td>
        
        
        
       
        <td><?php echo $fm->Dateformat($data['interviewdate']);?></td>
       
       <td><?php
          if ($data['status'] == "0") {
            echo "<span style='color:blue;'>No Response</span>";     
            }elseif($data['status'] == "1"){
                
                echo "<span style='color:green;'>Participating</span>";
            }elseif($data['status'] == "2"){
                 echo "<span style='color:#320b86;'>Not Participating</span>"; 
                
            }elseif($data['status'] == "3"){
                echo "<span style='color:#f57c00;'>Attented</span>"; 
                
            }else{
             echo "<span style='color:red;'>Absent</span>"; 
            }

       ?></td>
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