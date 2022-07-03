<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>



<!-- FOOTER -->
<footer id="t3-footer" class="wrap t3-footer">

	<!-- FOOT NAVIGATION -->
    <?php if ($this->checkSpotlight('footnav', 'bottom1, bottom2, bottom3, bottom4')) : ?>
	<div class="t3-bottom-module">
	<div class="container top-p60">
		<?php $this->spotlight('footnav', 'bottom1, bottom2, bottom3, bottom4') ?>
	</div>
	</div>
	<?php endif ?>
	<!-- //FOOT NAVIGATION -->


	<div class="t3-copyright top-p20 bot-p70">
		<div class="container">
			<hr>
          <div class="row">

			<?php if ($this->countModules('footnav') or $this->getParam('t3-rmvlogo', 1)): ?>
			<div class="footnav poweredby">
			<?php if ($this->countModules('footnav')) : ?>
				<jdoc:include type="modules" name="<?php $this->_p('footnav') ?>" />
			<?php endif; ?>
			<?php if ($this->getParam('t3-rmvlogo', 1)): ?>
				<a class="t3-logo t3-logo-color" href="http://t3-framework.org" title="Powered By T3 Framework" target="_blank" rel="nofollow">Powered by <strong>T3 Framework</strong></a>
			<?php endif; ?>
			</div>
			<?php endif; ?>
			</div>
<hr>
			<div class="copyright <?php $this->_c('copyright') ?>">
				<jdoc:include type="modules" name="<?php $this->_p('copyright') ?>" />
			</div>


      </div>
	</div>

    <div id="toTop" class="backtotop">
       <?php echo JText::_('<i class="fa fa-angle-up"></i>');?>
    </div>
</footer>
<!-- //FOOTER -->
