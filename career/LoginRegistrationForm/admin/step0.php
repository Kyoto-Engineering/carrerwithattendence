<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
<?php include_once "../Classes/stepclass.php";?>
 <?php include_once "inc/sidebar.php";?>   

 <?php
 $allS = new Steps();
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $userId = $_POST['userId'];
        $info   = $_POST['info'];
        $userjob = $allS->sendProces($userId, $info);
    }
 ?> 
<!--pagination-->
  <?php 
    $per_page = 10;
    if (isset($_GET["page"])) {
      $page = $_GET["page"];
    }else{
      $page=1;
    }
    $start_form = ($page-1)*$per_page;
  ?>
  <!--pagination-->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Just Registered</h1>
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
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Birth Date</th>
        <th>Specialization</th>
        <th>Apply Date</th>
        <th>IP</th>

      </tr>
    </thead>
    <tbody>
    <?php
    $allS = new Steps();
      $getlist = $allS->getonlyregisterd($start_form, $per_page);
      if ($getlist) {
        while($data = $getlist->fetch_assoc()){

    ?>
      <tr>
        <td><?php echo $data['userName'];?></td>
        <td><?php echo $data['email'];?></td>
        <td><?php echo $data['phone'];?></td>
        <td><?php echo $data['dob'];?></td>
        <td><?php echo $data['specialization'];?></td>
        <td><?php echo $data['date'];?></td>
        <td><?php echo $data['IP'];?></td>
        <td><form action="" method="post">
        <input type="hidden" name="userId" value="<?php echo $data['regId'];?>" />
       
        <input type="hidden" name="info" value="1"/>
      </td>

    <td><input type="submit" name="submit" value="Send Process Note"></td>
         

       </form> </td>
        
      </tr>
      <?php } } ?>
    </tbody>
  </table>

    <!--pagination-->
        <?php 
        $db = new Database();
        $query = "SELECT * FROM tbl_user_reg WHERE statuss = '1'";
        $result = $db->select($query);
        $total_rows = mysqli_num_rows($result);
        $total_pages = ceil($total_rows/$per_page);

          echo "<span class='pagination'><a href='step0.php?page=1'>".'First Page'."</a>";
          for ($i=1; $i <=$total_pages ; $i++) { 
            echo "<a href='step0.php?page=".$i."'>".$i."</a>";
          };

         echo "<a href='step0.php?page=$total_pages'>".'last Page'."</a></span>"?>
          <!--pagination-->
      </div>
           
  </div>  
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 