<?php include_once "inc/header.php";?>
<?php include_once '../helpers/format.php';?>
<?php include_once "../Classes/module.php";?>

<?php
    $allM = new Module();
    $fm = new Format();
    
?>
 <?php include_once "inc/sidebar.php";?>    
<!--pagination-->
  <?php 
    $per_page = 40;
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
      <h1>
       All Registered People
       
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
                         <th>Resume</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Age</th>
                       
                        <th>Specialization</th>
                        <th>SignUp-Time </th>
                        <th></th>
                      </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                      $getdept = $allM->getAllpeople($start_form, $per_page);
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
                            <a href="applicant_details.php?user=<?php echo $uId;?>">
                            <?php echo $value['userName'];?>
                            <!--</a>-->
                            </td>
                            <td>
                                <?php
                           $getdata = $allM->getdocument($uId);
                           if ($getdata) {
                               while ($data = $getdata->fetch_assoc()) {
                             
                             ?> 
                        
                      
        
                       <a href="../<?php echo $data['resume'] ?>" target="_blank">
                         <img src="image/adobe-pdf-icon.png" alt="pdf" height="30px" width="25px">
                         
                       </a>
        
        
                        
                        <?php } } ?>

                        </td>

                        <td><?php echo $value['email'];?></td>
                        <td><?php echo $value['phone'];?></td>
                        <td><?php
//An example date of birth.
$userDob =  $value['dob'];

//Create a DateTime object using the user's date of birth.
$dob = new DateTime($userDob);

//We need to compare the user's date of birth with today's date.
$now = new DateTime();

//Calculate the time difference between the two dates.
$difference = $now->diff($dob);

//Get the difference in years, as we are looking for the user's age.
$age = $difference->y;

//Print it out.
echo $age;?>years</td>
                          
                        <td><?php echo $value['specialization'];?></td>
                        <td><?php echo $fm->formatDate($value['date']);?></td>
                        <td><?php
                            if ($value['listing']=="1") { 
                              echo "<span style='font-size:bold;'>Gray</span>";

                              }elseif ($value['listing']=="2") { 

                              echo "<span style='font-size:bold;'>Black</span>";
                              
                           }elseif($value['listing']=="3"){
                               echo "<span style='font-size:bold;'>White Listed</span>";
                               }else {
                              echo "Not Listed";
                            }?>

                        </td>
                      </tr>
                      
                      <?php } } ?>

                    </tbody>
                  </table>
                       <!--pagination-->
        <?php 
        $db = new Database();
        $query = "SELECT * FROM tbl_user_reg";
        $result = $db->select($query);
        $total_rows = mysqli_num_rows($result);
        $total_pages = ceil($total_rows/$per_page);

          echo "<span class='pagination'><a href='registerd_list.php?page=1'>".'First Page'."</a>";
          for ($i=1; $i <=$total_pages ; $i++) { 
            echo "<a href='registerd_list.php?page=".$i."'>".$i."</a>";
          };

         echo "<a href='registerd_list.php?page=$total_pages'>".'last Page'."</a></span>"?>
          <!--pagination-->
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