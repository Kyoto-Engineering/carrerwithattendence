<?php include_once "inc/header.php";?>
<?php include_once "../Classes/module.php";?>
<?php
  $allM = new Module();
?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Job List
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="container">
        <div class="row">
          <div class="col-md-6">
           <table class="table">
           
    <thead>
      <tr>
      <th>Sl</th>
        <th>Job Title</th>
        <th></th>
        
      </tr>
    </thead>
    <tbody>
           <?php
              $getlist = $allM->getAlljoblist();
              if($getlist){
                $i = '0';
                while($data = $getlist->fetch_assoc()){
                  $i++;
           ?>
      <tr class="success">
        <td><?php echo $i;?></td>
        <td><?php echo $data['jobtitle']?></td>
        <td><a href="edit_job.php?jid=<?php echo $data['jId'];?>">Edit</a></td>
        
      </tr>
     
     <?php  } } ?>
     
      
    </tbody>
  </table>
        </div>
      </div>
      
      <!-- /.row -->

      
      <!-- Main row -->
      <div class="row">
        
            </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 