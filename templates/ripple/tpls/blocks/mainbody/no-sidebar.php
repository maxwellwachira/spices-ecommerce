<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Mainbody 1 columns, content only
 */
?>

<div id="t3-mainbody" class="container t3-mainbody">
	<div class="row">

		<!-- MAIN CONTENT -->
		<div id="t3-content" class="t3-content col-xs-12">
    
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
			
	<?php if (JRequest::getVar('view')=='productdetails') { ?>
	<div class="t3-product-details">
		<jdoc:include type="modules" name="ondetail" style="T3Xhtml" />
	</div>
	<?php } ?>	
			     
      <?php if ($this->checkSpotlight('content-bottom', 'content-bottom-1, content-bottom-2, content-bottom-3')) : ?>
      <div class="t3-content-mass">
				<?php $this->spotlight('content-bottom', 'content-bottom-1, content-bottom-2, content-bottom-3') ?>
      </div>
			<?php endif ?>
      
		</div>
		<!-- //MAIN CONTENT -->

	</div>
</div> 