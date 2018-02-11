


	<div id="cv" class="instaFade">
	<?php 
			$getinfo = $cv->getuserInfo($userId);
			if ($getinfo) {
				while($data = $getinfo->fetch_assoc()){?>
		<div class="mainDetails">
			<div id="headshot" class="quickFade">
				<img src="../<?php echo $data['image'];?>" alt="Not Found"/>
			</div>
		
			<div id="name">
				<h1 class="quickFade delayTwo"><?php echo $data['userName'];?></h1>
				<!-- <h2 class="quickFade delayThree">Job Title</h2> -->
				<table class="subDetails">
					<tr>
						<td><span class="glyphicon glyphicon-envelope"></span> <?php echo $data['email'];?></td>
					</tr>
					<tr>
						<td><span class="glyphicon glyphicon-phone"></span><?php echo $data['phone'];?></td>

					</tr>
						<?php } } ?>
					<?php 
					$getadd = $cv->getuseradd($userId);
					if ($getadd) {
						while($data = $getadd->fetch_assoc()){?>
					<tr>
						<td><span class="glyphicon glyphicon-edit"></span> <?php echo "House No-".$data['holding'];?> <?php echo "Road no-".$data['road'];?> <?php echo $data['block'];?>, <?php echo $data['area'];?>, <?php echo $data['distName'];?></td>
					</tr>
					<?php } } ?>
				</table>
			</div>

			<div>
			<!-- <ul>
				<li>email: <a href="mailto:joe@bloggs.com" target="_blank">joe@bloggs.com</a></li>
				<li>w: <a href="http://www.bloggs.com">www.bloggs.com</a></li>
				<li>mobile: 01234567890</li>
			</ul> -->
			
		</div>
		<div class="clear"></div>
	</div>