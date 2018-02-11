<?php
include_once 'dbconfig.php';

$user_contact = $_GET['phone'];


$count=0;
	if($count == 0)
	{
		$sql="UPDATE tbl_reference SET disagree = '1' WHERE phone = '$user_contact'";
		mysql_query($sql);
		?>
		<script>
		alert('Disagreed');
      
        </script>
		<?php
 }



	else
	{
		?>
		<script>
		alert('Sorry!');
		
        
        </script>
		<?php
	}
