<?php
        
               $getinfo=$cv->getpersonalInfo($userId);
               if ($getinfo) {

          
              while ($value = $getinfo->fetch_assoc()) {
				?>
			<section>
				<article>
					<div class="sectionTitle">
						<h1>Personal Details</h1>
					</div>

					<div class="sectionContent">
						<table class="subDetails">
							<tr>
								<td>Father's Name</td>
								<td>: &nbsp;<?php echo $value['fName'] ;?></td>
								<td></td>
							</tr>
							<tr>
								<td>Mother's Name</td>
								<td>: &nbsp;<?php echo $value['mName'] ;?></td>
								<td></td>
							</tr>
							<?php
        
               $getdob=$cv->getpersonalDob($userId);
               if ($getdob) {

          
              while ($data = $getdob->fetch_assoc()) {
				?>
							<tr>
								<td>Date of Birth</td>
								<td>: &nbsp;<?php echo $data['dob'] ;?></td>
								<td></td>
							</tr>

							<?php } } ?>
							<tr>
								<td>Nationality</td>
								<td>: &nbsp;<?php echo $value['nId'] ;?></td>
								<td></td>
							</tr>
							
							<tr>
								<td>Marital Status</td>
								<td>: &nbsp;<?php echo $value['maritalStatus'] ;?></td>
								<td></td>
							</tr>
							<?php
        
               $getadd=$cv->getpaddress($userId);
               if ($getadd) {

          
              while ($dataa = $getadd->fetch_assoc()) {
				?>
							<tr>
								<td>Permanent Address</td>
								<td>: &nbsp; <?php echo $dataa['area'] ;?> , &nbsp; <?php echo $dataa['distName'] ;?></td>
								<td></td>
							</tr>
							<?php } } ?>
							
						</table>
					</div>
				</article>
				<div class="clear"></div>
			</section>
			<?php } }  ?>

					</div>
	</div>