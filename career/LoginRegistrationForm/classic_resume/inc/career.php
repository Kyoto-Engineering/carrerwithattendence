	<div id="mainArea" class="quickFade delayFive">
	<?php 
		$getObj = $cv->getObjective($userId);
		if ($getObj) {
			while ($info = $getObj->fetch_assoc()) {?>
			
		<section>
			<article>
				<div class="sectionTitle">
					<h1>Career Objective</h1>
				</div>
				
				<div class="sectionContent">
					<p><?php echo $info['ques1'];?>. <?php echo $info['ques2'];?>. <?php echo $info['ques3'];?></p>
					</div>
				</article>
				<div class="clear"></div>
			</section>
			<?php 	
			}
		}
	?>