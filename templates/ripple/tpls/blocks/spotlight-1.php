<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>


<?php if ($this->checkSpotlight('position-1', 'position-1a, position-1b, position-1c')) : ?>
<div class="wrap t3-sl t3-banner-section">
	<!-- SPOTLIGHT 1 -->
	<div class="container">
		<?php $this->spotlight('position-1', 'position-1a, position-1b, position-1c') ?>
	</div>
	<!-- //SPOTLIGHT 1 -->
</div>
<?php endif ?>

<?php if ($this->countModules('position-2a')) : ?>
<div class="wrap t3-sl">
	<div class="container">
  	<jdoc:include type="modules" name="<?php $this->_p('position-2a') ?>" style="T3Xhtml" />
	</div>
</div>
<?php endif ?>

<?php if ($this->checkSpotlight('position-3', 'position-3a, position-3b, position-3c')) : ?>
<div class="wrap t3-sl bg-dark top-m40 bot-m90">
	<!-- SPOTLIGHT 1 -->
	<div class="container">
		<?php $this->spotlight('position-3', 'position-3a, position-3b, position-3c') ?>
	</div>
	<!-- //SPOTLIGHT 1 -->
</div>
<?php endif ?>

<?php if ($this->countModules('tabs-heading') || $this->countModules('tabs')) : ?>
<div class="t3-sl">
	<div class="container">
		<?php if ($this->countModules('tabs-heading')) : ?>
			<jdoc:include type="modules" name="<?php $this->_p('tabs-heading') ?>" style="T3Xhtml" />
		<?php endif ?>
		<?php if ($this->countModules('tabs')) : ?>
			<jdoc:include type="modules" name="<?php $this->_p('tabs') ?>" style="t3tabs" />
		<?php endif ?>
	</div>
</div>
<?php endif ?>

<?php if ($this->checkSpotlight('position-4', 'position-4a, position-4b, position-4c')) : ?>
<div class="wrap t3-sl">
	<!-- SPOTLIGHT 1 -->
	<div class="container">
		<?php $this->spotlight('position-4', 'position-4a, position-4b, position-4c') ?>
	</div>
	<!-- //SPOTLIGHT 1 -->
</div>
<?php endif ?>
