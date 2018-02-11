			<?php 
			$gettit = $cv->gettitle($userId);
			if($gettit){
				while ($data = $gettit->fetch_assoc()) {?>
	<?php
					if ($data['userId'] == $userId) { ?>
			<section>

					

				<div class="sectionTitle">

						

					<h1>Professional Training</h1>
									
				</div>
				<?php } }?>
				<div class="sectionContent">
					<article>
						<table>
					<?php 
						$getObj = $cv->getTraining($userId);
						if ($getObj) {
							while ($info = $getObj->fetch_assoc()) {?>
							<tr>
								<td><h2>Certification</h2></td>
								<td>:</td> 
								<td> &nbsp;<?php echo $info['trainingName'] ; ?> </td>
							</tr>
							<tr class="subDetails">
								<td>Institution</td>
								<td>:</td>
								<td>&nbsp;<?php echo $info['tInstitution'] ; ?></td>
							</tr>
							<tr class="subDetails">
								<td>Duration</td>
								<td>:</td>
								<td>&nbsp;<?php echo $info['sMonth'] ;?> - <?php echo $info['eMonth'] ;?></td>
							</tr>
							<?php } } ?>
						</table>
					</article>
				</div>
				<div class="clear"></div>
			</section><br>
			<?php	} ?>