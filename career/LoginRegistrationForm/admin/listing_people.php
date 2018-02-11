<?php include_once "inc/header.php";?>
<?php include_once "../Classes/resume.php";?>
<?php include_once "../helpers/Format.php";?>
          <?php
            $edu = new Resume();
            $fm = new Format();
          ?>
  <?php
  if(isset($_GET['user'])){
        $uId = $_GET['user'];
        
      }
  ?>
 <?php include_once "inc/sidebar.php";?>    
<?php 
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
     $addcommit = $edu->addlistingpeople($_POST, $uId);
    }
?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Mark People As Gray/Black List
       
      </h1>
      <?php
            if (isset($addcommit)) {
                echo $addcommit;
            }

        ?>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
          <div class="col-md-2">
            <p>SignUp-Date</p>
          </div>
          <div class="col-md-2">
          <p>Short-listed</p>
            
          </div>
          <div class="col-md-2">
            <p>Attendence</p>
          </div>
          <div class="col-md-2">
            <p>Interview-Date</p>
          </div>
          
      </div>

      <div class="row">
      <?php
        $getDate = $edu->getSignupdate($uId);
        if ($getDate) {
         while ($data = $getDate->fetch_assoc()) {
     
      ?>
          <div class="col-md-2">
            <p><?php echo $fm->formDate($data['date'])?></p>
          </div>
        <?php } } ?>
         <?php
        $getDate = $edu->getShortList($uId);
        if ($getDate) {
         while ($data = $getDate->fetch_assoc()) {
     
        ?>

          <div class="col-md-2">
          <p> <?php
              if ($data['status'] == "1") {
                echo "Short-listed";
              }

          ?></p>
            
          </div>
        <?php } } ?>

        <?php
        $getDate = $edu->getAttendence($uId);
        if ($getDate) {
         while ($data = $getDate->fetch_assoc()) {
     
        ?>
          <div class="col-md-2">
            <p> <?php
              if ($data['attend'] == "0") {
                echo "Null";
              }elseif ($data['attend'] == "1") {
               echo "Present";
              }elseif ($data['attend'] == "2") {
               echo "Attendence";
              }else{
                echo "Upcoming";
              }

          ?></p>
          </div>

          <?php } } ?>

      <?php
        $getDate = $edu->getInterviewDate($uId);
        if ($getDate) {
         while ($data = $getDate->fetch_assoc()) {
     
      ?>
          <div class="col-md-2">
            <p><?php echo $data['interviewdate'];?></p>
          </div>
       <?php } } ?>   

       <div class="col-md-3">
          <!--gray or black listing-->
                          <form action="" method="post">
                             <input class="w3-radio" type="radio"   name="listing" value="1">
                              <label>Gray</label>
                              &nbsp;
                              <input class="w3-radio" type="radio"   name="listing" value="2">
                              <label>Black</label></td>
                              <input class="w3-radio" type="radio"   name="listing" value="3">
                              <label>White-List</label></td>
    

                            <td><input type="submit" name="submit" value="Commit"></td>
                          </form> 
                        </td>
                        <!--gray or black listing end-->
                      
       </div>
      </div>
      </div>
      <br/><br/><br/>
      
      <div class="row">
      
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