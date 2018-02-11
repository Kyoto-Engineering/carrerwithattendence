<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
<?php include_once "../Classes/stepclass.php";?>
 <?php include_once "inc/sidebar.php";?>   

 
  <!--pagination-->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Sign in Record</h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      
  
      
    
      <!-- /.row -->
    
      <!-- Main row -->
  <div class="wrap" style="width: 970px;">
      <div class="row">
        <table class="table">
    <thead>
      <tr>
      <th>SL</th>
        <th>Name</th>
         <th>email</th>
          <th>phone</th>
       
        <th>IP</th>
        <th>browser</th>
       

      </tr>
    </thead>
    <tbody>
    <?php
    $allM = new Steps();
       $getsigninrecord = $allM->getsigninList();
        if ($getsigninrecord) {
            $i = 0;
            while($data = $getsigninrecord->fetch_assoc()){
                $i++;

                ?>
   
      <tr>
      <td> <?php echo $i; ?></td>
        <td><?php echo $data['userName'];?></td>
         <td><?php echo $data['email'];?></td>
          <td><?php echo $data['phone'];?></td>
       
        <td><?php echo $data['ip'];?></td>
        <td><?php echo $data['browser'];?></td>
        
         

       
        
      </tr>
       <?php } } ?> 
    
    </tbody>
  </table>

    <!--pagination-->
       
        
          <!--pagination-->
      </div>
           
  </div> 
 
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 