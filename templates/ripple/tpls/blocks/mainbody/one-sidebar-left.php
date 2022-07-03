<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Mainbody 2 columns: sidebar - content
 */
?>
<div id="t3-mainbody" class="container t3-mainbody">
	<div class="row">

		<!-- MAIN CONTENT -->
		<div id="t3-content" class="t3-content col-xs-12 col-md-9 col-md-push-3">
    
     	<?php if ($this->countModules('content-top-1')) : ?> 
    		<jdoc:include type="modules" name="<?php $this->_p('content-top-1') ?>" style="T3Xhtml" />
      <?php endif ?>
			
			<?php if ($this->checkSpotlight('content-top', 'content-top-2, content-top-3, content-top-4')) : ?>
    	<div class="t3-content-mass">
				<?php $this->spotlight('content-top', 'content-top2, content-top3, content-top4') ?>
      </div>
      <?php endif ?>
			     
			<?php if($this->hasMessage()) : ?>
			<jdoc:include type="message" />
			<?php endif ?>
			<jdoc:include type="component" />
      
      <?php if ($this->checkSpotlight('content-bottom', 'content-bottom-1, content-bottom-2, content-bottom-3')) : ?>
      <div class="t3-content-mass">
				<?php $this->spotlight('content-bottom', 'content-bottom-1, content-bottom-2, content-bottom-3') ?>
      </div>
			<?php endif ?>
      
		</div>
		<!-- //MAIN CONTENT -->

		<!-- SIDEBAR LEFT -->
		<div class="t3-sidebar t3-sidebar-left col-xs-12 col-md-3 col-md-pull-9 <?php $this->_c($vars['sidebar']) ?>">
			<jdoc:include type="modules" name="<?php $this->_p($vars['sidebar']) ?>" style="T3Xhtml" />
		</div>
		<!-- //SIDEBAR LEFT -->

	</div>
</div> 