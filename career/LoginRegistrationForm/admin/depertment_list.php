<?php include_once "inc/header.php";?>
     <?php include_once "../Classes/module.php";?>
<?php
    $allM = new Module();
    
?>
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Control panel
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
         <div class="col-md-8">
             <span style="color: green">
                    <?php
                        /*if (isset($deldep)) {
                            echo $deldep;
                        }*/
                    ?>
                </span>
                <table class="table">
                    <thead>
                      <tr>
                        <th>Department</th>
                        
                      </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                      $getdept = $allM->getAlldept();
                       if ($getdept) {
                           while ($value = $getdept->fetch_assoc()) {
                              
                         
                    ?>
                      <tr>
                        <td><?php echo $value['deptName'];?></td>
                        <td><a href=""><span class="glyphicon glyphicon-edit"></span></a>&nbsp;||&nbsp;<a
                        onclick="return confirm('Are You Sure To Delete!');" href="?deldeg=<?php echo $value['dId'];?>"><span class="glyphicon glyphicon-remove"></span></a></td>
                      </tr>
                      </tr>
                      <?php } } ?>
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