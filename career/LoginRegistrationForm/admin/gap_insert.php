<?php include_once "inc/header.php";?>
<?php include_once '../helpers/format.php';?>
<?php include_once "../Classes/module.php";?>

<?php
    $allM = new Module();
    $fm = new Format();
    
?>
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      People List
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
         <div class="col-md-12 col-sm-8 col-xs-6">
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
                        <th>ID</th>
                        <th>UserName</th>
                        
                        
                      </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                      $getdept = $allM->getAllpeopleforGap();
                       if ($getdept) {
                          $i = 0;
                           while ($value = $getdept->fetch_assoc()) {
                             $i++; 
                         
                    ?>
                      <tr>
                            <?php
                                $uId = $value['regId'];
                            ?>
                        <td><?php echo $i;?></td>
                        <td>
                            <a href="add_gap.php?user=<?php echo $uId;?>">
                            <?php echo $value['userName'];?>
                            </a>
                            </td>
                            </tr>
                            </div>
           
    <?php } } ?>
         
</tbody>
</table>
</div>
    </section>
    <!-- /.content -->
  </div>
  <?php include_once "inc/footer.php";?>