</div>
<div id="footer-container">
	<div id="footer">
	  <div class="column">
		<p>&copy; 2014 Moon Art & Masters All Rights Reserved</p>
	  </div>
	  <?php if ($informations) { ?>
	  <div class="column">
		<ul>
		  <?php foreach ($informations as $information) { ?>
		  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
		  <?php } ?>
		  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
		  <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		</ul>
	  </div>
	  <?php } ?>
	  <div class="column">
		<ul class="sns">
		  <li><i class="fa fa-envelope"></i></li>
		  <li><i class="fa fa-pinterest"></i></li>
		  <li><i class="fa fa-instagram"></i></li>
		  <li><i class="fa fa-twitter"></i></li>
		  <li><i class="fa fa-facebook"></i></li>
		</ul>
	  </div>
	</div>
</div>

</body></html>