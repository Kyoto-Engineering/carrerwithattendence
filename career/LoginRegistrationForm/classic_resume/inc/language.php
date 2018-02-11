<?php 
	$getl = $cv->getlanguage($userId);
	if ($getl) {
		while ($data = $getl->fetch_assoc()) {?>

		<?php 
			if ($data['userId'] == $userId) {?>
			<section>
				<div class="sectionTitle">
					<h1>Language</h1>
				</div>
				
				<div class="sectionContent">
<table class="table">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">Reading</th>
      <th scope="col">Writing</th>
      <th scope="col">Speaking</th>
    </tr>
  </thead>
  <tbody>
  <?php 
				$getUl = $cv->getUserlanguage($userId);
				if ($getUl) {
					while($value = $getUl->fetch_assoc()){?>

    <tr>
      <!-- <th scope="row">1</th> -->
      <td><?php echo $value['flang'];?></td>
      <td><?php echo $value['reading'];?></td>
      <td><?php echo $value['writing'];?></td>
      <td><?php echo $value['speaking'];?></td>
    </tr>
    <?php } } ?>
  </tbody>
</table>
				</div>
				
				<div class="clear"></div>
			</section>	
			<?php } ?>


		<?php } } ?>	

			
