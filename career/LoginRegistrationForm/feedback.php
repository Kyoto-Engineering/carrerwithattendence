<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>
<?php include_once "Classes/frontclass.php";?>
<?php include_once "lib/Database.php"; ?>

            <?php
                $db = new Database();
                     $userId = Session::get("userId");
                    
                    $iplogfile = 'logs/ip-address-mainsite.html';
                    $ipaddress = $_SERVER['REMOTE_ADDR'];
                    $webpage = $_SERVER['SCRIPT_NAME'];
                    $timestamp = date('d/m/Y h:i:s');
                    $browser = $_SERVER['HTTP_USER_AGENT'];
                    /*$fp = fopen($iplogfile, 'a+');
                    chmod($iplogfile, 0777);
                    fwrite($fp, '['.$timestamp.']: '.$ipaddress.' '.$webpage.' '.$browser. "\n<br><br>");
                    fclose($fp);*/
                    $Iquery = "INSERT INTO tbl_urecord(userId, ip, browser) VALUES('$userId', '$ipaddress', '$browser')";
                    $insert_row = $db->insert($Iquery);
            
            ?>
<?php
    $allF = new Front();
    /* if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $userjob = $allM->jobInput($_POST);
    }*/
?>
                        <div class="container-fluid">
                          <img class="img-responsive" src="../assets/images/recruitment1.jpg" alt="Banner">
                         </div>
<?php 

    $userId = Session::get("userId");
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        
        
        $addComent = $allF->userfeedback($_POST, $userId);
    }
 
?>
<div class="container">
<center><h3>Give Us <em>FeedBack</em></h3></center>
           
<div class="row backform">
 <?php
               if (isset($addComent)) {
                   echo $addComent;
            }
            ?>
<form action="" method="post">
    <div class="form-group">
      <label for="usr">Give the Page link You have find problem:</label>
      <input type="text" name="link" class="form-control" id="usr">
    </div>
     <div class="form-group">
  <label for="comment">Write what is your problem:</label>
  <textarea class="form-control" name="gap" rows="5" id="comment"></textarea>
</div> 

<div class="form-group">
  <label for="comment">Write your opinion, what it should be:</label>
  <textarea class="form-control" name="comment" rows="5" id="comment"></textarea>
</div> 
<button type="submit" name="submit" class="btn upbtn btn-primary">Submit</button>
</form>
 </div>       
</div>
        

        
   <!-- loop will start here-->
        
             
            

<?php include_once "inc/footer.php";?>