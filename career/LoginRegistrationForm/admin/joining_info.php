<?php include_once "inc/header.php";?>
<?php include_once "../Classes/schedule.php";?>



 <?php include_once "inc/sidebar.php";?> 


  <?php
      $time = new Schedule();
      /*if (isset($_GET['delete'])) {
      $Did = $_GET['delete'];
      $delCat = $edu->delByid($Did);
    }*/
  ?>
  <?php
    if (!isset($_GET['uId']) || $_GET['uId'] == NULL ) {
        
      }else{
        $uId = $_GET['uId'];
      }

?> 
  <?php 

    
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){

        $sendInfo = $time->sendJoiningInfo($_POST, $uId);
    }
 
?>   

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Joining Info
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="col-md-8">
        <div id="adminForm">
            <h3 id="Header">  </h3>
            <br>
           
            <form action="" method="post" style="padding:2px">
                                 
              
                
<div class="inputform" style="width: 60%;
height: auto;
border: 1px solid #ccc8c8;
background-color: #b0b5b6;
margin: 0 auto;
padding: 20px 25px;
border-radius: 5px;">

                <div class="form-group" style="padding:2px">
                    <div class='input-group date' id='datetimepicker1'> <b> Reporting Date </b>
                        <input type='date' name="rdatee" class="form-control" />
                       
                    </div>
                </div>
                
                <div class="form-group" style="padding:2px">
                    <div class='input-group date' id='datetimepicker1'> <b> Expected Joining Date </b>
                        <input type='date' name="datee" class="form-control" />
                       
                    </div>
                </div>
              
                    <div class="form-group" style="padding:2px">
                    <div class='input-group'> <b> Time </b>
                        <input type='time' name="timee" class="form-control" />
                       
                    </div>
                </div>
                
              
                
                <div class="form-group">
                                        <label for="exampleTextarea">Venue:</label>
                                        <textarea class="form-control" name="venue" id="exampleTextarea" rows="3" value="">Kyoto Engineering & Automation Ltd. B2 House 64 Block B Road 3, Niketon Gulshan Dhaka 1212</textarea>
                                  </div>
                

                
                <button type="submit" name="submit" class="btn btn-lg btn-primary" style="padding:2px">Send</button>
</div>
                
            </form>
        </div>
      </div>
      <!-- /.row -->

      
      <!-- Main row -->
      
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <?php include_once "inc/footer.php";?> 