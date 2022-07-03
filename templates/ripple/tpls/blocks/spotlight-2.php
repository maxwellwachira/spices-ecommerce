<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>


<?php if ($this->checkSpotlight('position-5', 'position-5a, position-5b, position-5c')) : ?>
	<!-- SPOTLIGHT 2 -->
	<section class="t3-sl">
	<div class="container">
		<?php $this->spotlight('position-5', 'position-5a, position-5b, position-5c') ?>
	</div>
	<!-- //SPOTLIGHT 2 -->
	</section>
<?php endif ?>


<?php if ($this->countModules('position-6')) : ?>
<section class="t3-sl">
	<div class="container">
		<jdoc:include type="modules" name="<?php $this->_p('position-6') ?>" style="T3Xhtml" />
	</div>
</section>
<?php endif ?>


<?php if ($this->checkSpotlight('position-7', 'position-7a, position-7b')) : ?>
	<!-- SPOTLIGHT 1 -->
	<div class="t3-sl bot-p60">
		<div class="container">
			<hr class="bot-m90">
			<?php $this->spotlight('position-7', 'position-7a, position-7b') ?>
		</div>
	</div>
	<!-- //SPOTLIGHT 1 -->
<?php endif ?>



	<!-- FOOT NAVIGATION -->
	<?php if ($this->checkSpotlight('position-8', 'position-8a')) : ?>
  <div class="t3-sl bg-light top-p90 bot-p90">
		<div class="container">
			<?php $this->spotlight('position-8', 'position-8a') ?>
		</div>
	</div>
	<?php endif ?>
	<!-- //FOOT NAVIGATION -->
