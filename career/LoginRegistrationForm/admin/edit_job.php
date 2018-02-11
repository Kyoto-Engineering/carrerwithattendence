<?php include_once "inc/header.php";?>
  <?php include_once "../Classes/module.php";?>

<?php 
    $allM = new Module();
    if (!isset($_GET['jid']) || $_GET['jid'] == NULL ) {
            echo "<script>window.location = 'catlist.php'</script>";
        }else{
            $jid = $_GET['jid'];
        }

?>
<?php
    
     if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $editInfo = $allM->jobTileEdit($_POST,$_FILES, $jid);
    }
?>
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Create Job Title Here
       
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
        <div class="col-md-12">
          <?php
                if (isset($editInfo)) {
                    echo $editInfo;
                }
            ?>
            <form action="" method="post" class="w3-container">
            <?php
              $getlist = $allM->getAlljoblistbyId($jid);
              if($getlist){
                
                while($data = $getlist->fetch_assoc()){
                  
              ?>
                <p>
                    <label>Job Title</label>
                    <input class="form-control" type="text" name="jobtitle" value="<?php echo $data['jobtitle'];?>" required>
                </p>
                
                <br>
                
                <p>
                    <label>Job Description </label>
                     
                            <textarea name="description" id="text" ><?php echo $data['description'];?></textarea>
                            <script> CKEDITOR.replace( 'text' );</script>
<br />
                    
                   
                </p>
                
          <p>
                    <button type="submit" name="submit" class="w3-button w3-block w3-section w3-green w3-ripple w3-padding">Submit</button>
                </p>
          <hr/>

                
    <?php } } ?>
            </form>
          
        </div>
          <?php 
   if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['upload'])) {
      $addResume = $allM->uploadDescription($jid, $_FILES);
    }
     ?>
          <form action="" method="post" enctype="multipart/form-data">
              <div class="row">
                  <div class="col-md-12 text-center colm">
                    <h3>Upload Your Resume</h3>
                     
             <?php 
                if (isset($addResume)) {
                  echo $addResume;
                }
              ?>
              
                    <hr/>
                    <div class="col-sm-12 colm2" style="margin-bottom:20px;">
                      <label class="btn-bs-file btn btn-lg btn-primary">           
                    <input type="file" name="jd" />
                    <input class="buton" type="submit" name="upload" value="Upload"/>
            </label>
                  </div>
              </div>

          </div>
          <hr/>
          </form>
      </div>
      <!-- /.row -->

      
      <!-- Main row -->
      <div class="row">
        
            </div>
           
    
         

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<!-- Load TinyMCE -->

<!-- Load TinyMCE -->
 
 <?php include_once "inc/footer.php";?> 