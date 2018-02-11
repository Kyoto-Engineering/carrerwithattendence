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
<div class="container">
    <div class="row">
        <div class="col-md-6"></div>
        <div class="col-md-6">
            <a href="resetpass.php"><button type="button" class="btn btn-lg btn-primary">Change Password</button></a>

        </div>
    </div>
</div>

<?php include_once "inc/footer.php";?>