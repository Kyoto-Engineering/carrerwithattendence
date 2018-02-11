<?php include_once "inc/header.php";?>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <?php include_once "../Classes/module.php";?>

<?php
    $allM = new Module();
     
?>
<?php
    if (!isset($_GET['jobId']) || $_GET['jobId'] == NULL ) {
        
      }else{
        $jobId = $_GET['jobId'];
      }

?> 
 <?php include_once "inc/sidebar.php";?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Control panel
       
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
      <div class="col-md-12">
       <center> <span style="color: green; font-style: italic; font-weight: bold; font-size: 35px;">JOB DESCRIPTION</span></center>

       <?php
       $getJd=$allM->getDescriptionById($jobId);
       if ($getJd) {
         while ($value = $getJd->fetch_assoc()) {
          
       ?>
     <ul>
 <?php //echo $value['jdDescription'];?>
</ul>

      
<ul>
<li> Complete engineering design, testing  and commissioning of facility instrumentation and control systems.</li>
<li> Attend customer queries and provide solution of their automation requirement.</li>
<li> Resolve problems by integrating automation solutions into customer’s factory, machine  or property from an array of products of Omron and other brands of the company. </li>
<li> Automation project planning, scheduling and budgeting based upon project commissioning and start-up schedule.</li>
<li> Develop and implement facility control and automation solutions based upon cause and effect documentation, control narrative and an understanding of the facility environment.</li>
<li>Insure accuracy and reliability of instrumentation, control and safety systems. </li>
<li>Generate system architecture and automation network drawings.</li>
<li> System testing and troubleshooting of control programs.</li>
<li>Creating Ladder Diagram.</li>
<li>Capable of solving all technical and managerial problems at project site.</li>
<li>Direct and coordinate manufacturing, construction, installation, maintenance, support, documentation, and testing activities to ensure compliance with specifications, codes, and customer requirements.</li>
<li> Perform detailed calculations to compute and establish manufacturing, construction, and installation standards and specifications.</li>
<li>Writing technical documentation and monitoring reports.</li>
<li> Preparation of feasible business proposals for electric and electronic products, Mechanical products and Machines in Bangladesh.</li>
<li> Doing R&D for the Bangladesh industrial automation sector which paves the way to enhance the conventional 
manufacturing process.</li>
</ul>

<?php } } ?>


     
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