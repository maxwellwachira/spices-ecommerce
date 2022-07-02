<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// get params
$sitename  	= $this->params->get('sitename');
$slogan    	= $this->params->get('slogan', '');
$logotype  	= $this->params->get('logotype', 'text');
$logoimage 	= $logotype == 'image' ? $this->params->get('logoimage', T3Path::getUrl('images/logo.png', '', true)) : '';
$logoimgsm 	= ($logotype == 'image' && $this->params->get('enable_logoimage_sm', 0)) ? $this->params->get('logoimage_sm', T3Path::getUrl('images/logo-sm.png', '', true)) : false;
$logosticky = $logotype == 'image' ? $this->params->get('logosticky', T3Path::getUrl('images/logo-sticky.png', '', true)) : '';

if (!$sitename) {
	$sitename = JFactory::getConfig()->get('sitename');
}

if ($this->getParam('affix_header', 0)) {
	$affix_header = 't3-sticky';
} else {
	$affix_header = '';
}

?>

<!-- HEADER -->
<header id="t3-header" class="t3-header <?php echo $affix_header; ?>">
	<?php if ($this->countModules('topbar-1') || $this->countModules('topbar-2')) : ?>
	<div class="t3-topbar">
		<div class="container">
			<div class="row">
			<div class="col-md-9 <?php $this->_c('topbar-1') ?>">
				<jdoc:include type="modules" name="<?php $this->_p('topbar-1') ?>" style="raw" />
			</div>

			<?php if ($this->countModules('topbar-2')) : ?>
			<div class="col-md-3 align-right hidden-xs hidden-sm <?php $this->_c('topbar-2') ?>">
				<jdoc:include type="modules" name="<?php $this->_p('topbar-2') ?>" style="raw" />
			</div>
			<?php endif ?>
		</div>
		<hr>
		</div>
	</div>
	<?php endif ?>

<div class="container">

	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<!-- LOGO -->
		<div class="logo">
			<div class="logo-<?php echo $logotype, ($logoimgsm ? ' logo-control' : '') ?>">
				<a href="<?php echo JURI::base(true) ?>" title="<?php echo strip_tags($sitename) ?>">
					<?php if($logosticky) : ?>
						<img class="logo-sticky" src="<?php echo JURI::base(true) . '/' . $logosticky ?>" alt="<?php echo strip_tags($sitename) ?>" />
					<?php endif ?>
					<?php if($logotype == 'image'): ?>
						<img class="logo-img" src="<?php echo JURI::base(true) . '/' . $logoimage ?>" alt="<?php echo strip_tags($sitename) ?>" />
					<?php endif ?>
					<?php if($logoimgsm) : ?>
						<img class="logo-img-sm" src="<?php echo JURI::base(true) . '/' . $logoimgsm ?>" alt="<?php echo strip_tags($sitename) ?>" />
					<?php endif ?>
					<span><?php echo $sitename ?></span>
				</a>
				<?php if($slogan) : ?>
				<small class="site-slogan"><?php echo $slogan ?></small>
				<?php endif ?>
			</div>
		</div>
		<!-- //LOGO -->

		<?php if ($this->getParam('navigation_collapse_enable', 1) && $this->getParam('responsive', 1)) : ?>
			<?php $this->addScript(T3_URL.'/js/nav-collapse.js'); ?>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".t3-navbar-collapse">
				<i class="fa fa-bars"></i>
			</button>
		<?php endif ?>

		<?php if ($this->getParam('addon_offcanvas_enable')) : ?>
			<?php $this->loadBlock ('off-canvas') ?>
		<?php endif ?>
	</div>


		<!-- MAIN NAVIGATION -->
		<nav id="t3-mainnav" class="navbar-default t3-mainnav">

		<?php if ($this->getParam('navigation_collapse_enable')) : ?>
			<div class="t3-navbar-collapse navbar-collapse collapse"></div>
		<?php endif ?>

		<div class="t3-navbar navbar-collapse collapse">
			<jdoc:include type="<?php echo $this->getParam('navigation_type', 'megamenu') ?>" name="<?php echo $this->getParam('mm_type', 'mainmenu') ?>" />
		</div>

		</nav>
		<!-- //MAIN NAVIGATION -->


		<?php if ($this->countModules('login') || $this->countModules('cart') || $this->countModules('head-search')) : ?>
			<div class="t3-headright">
				<div class="headright-inner">

					<?php if ($this->countModules('cart')) : ?>
					<!-- CART -->
					<div class="cart <?php $this->_c('cart') ?>">
						<jdoc:include type="modules" name="<?php $this->_p('cart') ?>" style="raw" />
					</div>
					<!-- //CART -->
					<?php endif ?>

					<?php if ($this->countModules('login')) : ?>
					<!-- LOGIN -->
					<div class="dropdown-login <?php $this->_c('login')?>">
						<div class="dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle"><i class="fa fa-user-circle"></i></a>
							<div class="dropdown-menu">
								<jdoc:include type="modules" name="<?php $this->_p('login') ?>" style="T3Xhtml" />
							</div>
						</div>
					</div>
					<!-- //LOGIN -->
					<?php endif ?>

					<?php if ($this->countModules('head-search')) : ?>
					<!-- HEAD SEARCH -->
					<div class="head-search <?php $this->_c('head-search') ?>">
						<jdoc:include type="modules" name="<?php $this->_p('head-search') ?>" style="raw" />
					</div>
					<!-- //HEAD SEARCH -->
					<?php endif ?>
				</div>
			</div>
		<?php endif ?>
		<div class="clr"></div>
</div>
</header>
<!-- //HEADER -->
