			<section>
				<div class="sectionTitle">
					<h1>Education</h1>
				</div>

				<div class="sectionContent">
				<?php
        
               $getpgrad=$cv->getpgraduationby($userId);
               if ($getpgrad) {

          
              while ($value = $getpgrad->fetch_assoc()) {
				?>

				<article>
						<h2>Post Graduation</h2>
						<p class="subDetails"><span><?php echo $value['uName'] ;?></span><br>
							<span><?php echo "Dept. - ".$value['studyDept'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>
						<?php } } ?>


				<?php
        
               $getgrad=$cv->getgraduationby($userId);
               if ($getgrad) {

          
              while ($value = $getgrad->fetch_assoc()) {
				?>
					<article>
						<h2>Graduation</h2>
						<p class="subDetails"><span><?php echo $value['uName'] ;?></span><br>
							<span><?php echo "Dept. - ".$value['studyDept'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>
					<?php } } ?>

                   
				<?php
        
               $gethsc=$cv->gethscinfoby($userId);
               if ($gethsc) {

          
              while ($value = $gethsc->fetch_assoc()) {
				?>
					<article>
						<h2>Higher Secondary Certificate(H.S.C)</h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['GName'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>
                  <?php } } ?>
               <?php
        
               $getDiploma=$cv->getdiplomainfoby($userId);
               if ($getDiploma) {

          
              while ($value = $getDiploma->fetch_assoc()) {
				?>


                  <article>
						<h2>Diploma Education</h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['degName'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>

					 <?php } } ?>

					 <?php
        
               $getALevel=$cv->getaLevelinfoby($userId);
               if ($getALevel) {

          
              while ($value = $getALevel->fetch_assoc()) {
				?>


                  <article>
						<h2>A Level</h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['divName'] ;?></span><br>
							
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>

					 <?php } } ?>


                 <?php
        
               $getssc=$cv->getSchoolinfoby($userId);
               if ($getssc) {

          
              while ($value = $getssc->fetch_assoc()) {
				?>
					<article>
						<h2>Secondary School Certificate(SSC)</h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['GName'] ;?></span><br>
							<span><?php echo "CGPA- ".$value['cgpa'] ;?></span><br>
							<span>Passing Year: 2016</span>
						</p>
					</article>

					<?php } } ?>


<?php
        
               $getOLevel=$cv->getoLevelinfoby($userId);
               if ($getOLevel) {

          
              while ($value = $getOLevel->fetch_assoc()) {
				?>


                  <article>
						<h2>O Level</h2>
						<p class="subDetails"><span><?php echo $value['name'] ;?></span><br>
							<span><?php echo $value['divName'] ;?></span><br>
							
							<span><?php echo "Passing Year- ".$value['pyear'] ;?></span>
						</p>
					</article>

					 <?php } } ?>



				</div>
				<div class="clear"></div>
			</section><br>