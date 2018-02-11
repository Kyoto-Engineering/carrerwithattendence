<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
 <?php include_once "inc/sidebar.php";?>   
 <?php include_once "../Classes/interviewclass.php";?>
 <?php include_once "../helpers/Format.php";?>

 <?php
     $allI = new Interview();
     $fm = new Format();
 ?>

 <?php
  if (isset($_GET['delpro'])) {
    $id = $_GET['delpro'];
    $deletePro = $allM->delproByid($id);
  }
?>
 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->

    <section class="content-header">
      <h1>
       
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
<?php
  if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
    $assign = $allI->assignDatetoBoard($_POST);
  }
?>
    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <!-- Main row -->
      <div class="row">
        <div class="col-md-4">
        <h3><em>Board Name</h3></em></h3>
          <?php
            $getName = $allI->getAllBoardname();
            if($getName){
              while ($data = $getName->fetch_assoc()) {
               
          ?>

          <ul>
            <li><a href="view_board.php?user=<?php echo $data['id']?>"><?php echo $data['boardname']?></a></li>
          </ul>
          <?php } } ?>
        </div> 

      <div class="col-md-4">
      <?php
      if (!isset($_GET['user']) || $_GET['user'] == NULL ) {
          echo "Click On Board Name For View Board";
      }else{
        $id = $_GET['user'];
         if ($id) {

          $getN = $allI->getAllname($id);
          if ($getN) {
            while($value = $getN->fetch_assoc()){?>

              <table>
                <tr>
                  <td><?php echo $value['uname'];?></td>
                </tr>
                
              </table>
                
           <?php } }?>

<?php
          $getN = $allI->getAllBname($id);
          if ($getN) {
            while($value = $getN->fetch_assoc()){?>


           <div class="col-md-4">
             <form action="" method="post">
             <input type="hidden" name="bId" value="<?php echo $value['bId'];?>" />  
              <br/>
              <label for="exampleFormControlSelect1">Sessions</label>
                <select class="form-control" id="exampleFormControlSelect1" name="interviewdate" style="width: 150%; height: 30px;">
                <option>Select Interview Session</option>
                <?php
                  $getgp = $allI->getAlldate();
                  if ($getgp) {
                    while ($value = $getgp->fetch_assoc()) {
                      
                ?>
                  <option value="<?php echo $value['interviewdate'];?>" ><?php echo $value['interviewdate'];?></option>
                 <?php } } ?>
                </select>
                <br/>

              <input type="submit" name="submit" value="Assign Session">   
           </form>
           </div>
             
<?php } } ?>



         <?php }
        } ?>
     
       
      </div>

      </div>     
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 