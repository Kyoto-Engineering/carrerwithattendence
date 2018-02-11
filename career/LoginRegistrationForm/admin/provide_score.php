<?php include_once "inc/header.php";?>
 <?php include_once "../Classes/resume.php";?>
 <?php include_once "../Classes/module.php";?>
 <?php include_once "../helpers/Format.php";?>
          <?php
            $edu = new Resume();
            $fm = new Format();
          ?>    
 <?php include_once "inc/sidebar.php";?>  
 <style>
.input {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
} 
.inputtext{
  width: 16%;
    padding: 8px 5px;
    margin: 8px 8px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
.sub {
    width: 10%;
    background-color: #3C8DBC;
    color: white;
    padding: 14px 20px;
    margin: 8px 70px;
    border: none;
    border-radius: 4px;
    cursor: pointer;

}
</style>

<?php
    if (!isset($_GET['id']) || $_GET['id'] == NULL ) {
        echo "<script>window.location = 'applied_job.php'</script>";
      }else{
        $uId = $_GET['id'];
      }

?> 
<?php
	$adminId = Session::get('adminId');
    $allM = new Module();
     if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $criteria = $allM->criteriaInput($_POST, $adminId, $uId);
    }
?>
 <div class="content-wrapper">
<section class="content-header">
      <h1><center>
        Score Board
       </center>
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
    <section class="content">
      <!-- Small boxes (Stat box) -->
          <div class="row">
     <?php 
        $getU = $edu-> getApplicant($uId);
        if ($getU) {
          while($value = $getU->fetch_assoc()){


      ?>
        <div class="col-md-8">
          <h5>Name:<?php echo $value['userName'];?></h5>
          <h5>Email:<?php echo $value['email'];?></h5>
          <h5>Phone:<?php echo $value['phone'];?></h5>
          <h5>BirthDate:<?php echo $value['dob'];?></h5>

        </div>
        <div class="col-md-4">
          <img src="../<?php echo $value['image'];?>" alt="image" height="150" width="120px"/>
        </div>
        <?php } } ?>  
        <div class="row">
          <div class="col-md-4">
            <?php
               $getdata = $edu->getdocument($uId);
               if ($getdata) {
                   while ($data = $getdata->fetch_assoc()) {
                 
          ?> 
        
           <a href="../<?php echo $data['resume'] ?>" target="_blank">
             <img src="image/adobe-pdf-icon.png" alt="pdf" height="80px" width="85px">
             <h5 style="margin-left: 20px; margin-top: -3px;">Resume.pdf</h5>
           </a>
        
        <?php } } ?>
          </div>
        </div>
    </div>
    </section>
<h3 style="margin-left: 10px;">Provide Score (Out of 10)</h3>
<?php
if (isset($criteria)) {
	echo $criteria;
}

?>

<div class="input">
  <form action="" method="post">
    <label for="criteria1">Criteria1:</label>
    <input type="text" class="inputtext" name="criteria1" placeholder="Provide Score for criteria1"><br/>

    <label for="criteria2">Criteria2:</label>
    <input type="text" class="inputtext" name="criteria2" placeholder="Provide Score for criteria2"><br/>

    <label for="criteria3">Criteria3:</label>
     <input type="text" class="inputtext" name="criteria3" placeholder="Provide Score for criteria3"><br/>

      <label for="criteria3">Criteria4:</label>
     <input type="text" class="inputtext" name="criteria4" placeholder="Provide Score for criteria4"><br/>

      <label for="criteria3">Criteria5:</label>
     <input type="text" class="inputtext" name="criteria5" placeholder="Provide Score for criteria5"><br/>

      <label for="criteria3">Criteria6:</label>
     <input type="text" class="inputtext" name="criteria6" placeholder="Provide Score for criteria6"><br/>

      <label for="criteria3">Criteria7:</label>
     <input type="text" class="inputtext" name="criteria7" placeholder="Provide Score for criteria7"><br/>

      <label for="criteria3">Criteria8:</label>
     <input type="text" class="inputtext" name="criteria8" placeholder="Provide Score for criteria8"><br/>

      <label for="criteria3">Criteria9:</label>
     <input type="text" class="inputtext" name="criteria9" placeholder="Provide Score for criteria9"><br/>

      <label for="criteria3">Criteria10:</label>
     <input type="text" class="inputtext" name="criteria10" placeholder="Provide Score for criteria10"></br>
      

    <input type="submit" name="submit" class="sub" value="Submit"> 
    
  </form>
</div>
    </div>


  <?php include_once "inc/footer.php";?> 