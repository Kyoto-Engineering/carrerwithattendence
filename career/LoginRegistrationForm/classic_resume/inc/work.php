<?php 
	$getl = $cv->getexp($userId);
	if ($getl) {
		while ($data = $getl->fetch_assoc()) {?>

		<?php 
			if ($data['userId'] == $userId) {?>		
			<section>
				<div class="sectionTitle">
					<h1>Work Experience</h1>
				</div>

				<div class="sectionContent">
					<article>
						<table>
						<?php 
						$getObj = $cv->getAllExp($userId);
						if ($getObj) {
							while ($info = $getObj->fetch_assoc()) {?>
							<tr>
								<td><p>Job Title</p></td>
								<td>:</td>&nbsp;&nbsp;
								<td>&nbsp;<?php echo $info['designation'];?></td>
							</tr>
							<tr class="subDetails">
								<td>Company Name</td>
								<td>:</td>&nbsp;&nbsp;
								<td> &nbsp;<?php echo $info['companyName'];?></td>
							</tr>
							<tr class="subDetails">
								<td>Duration</td>
								<td>:</td>&nbsp;&nbsp;
								<td><span>  &nbsp;<?php echo $info['sMonth'];?> -  <?php echo $info['eMonth'];?></span></td>
							</tr>
							<?php } } ?>
						</table>
					</article>
				</div>
				<div class="clear"></div>
			</section><br>
						<?php } ?>


		<?php } } ?>	