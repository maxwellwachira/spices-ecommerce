<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<?php if ($this->countModules('portfolio') or $this->countModules('description')) : ?>
<section class="wrap t3-sl t3-portfolio">
	<div class="container">
  	
		<?php if ($this->countModules('description')) : ?>
  	<div class="t3-desc-portfolio">
  		<jdoc:include type="modules" name="<?php $this->_p('description') ?>" style="T3Xhtml" />
		</div>
		<?php endif ?> 
         	
    	<jdoc:include type="modules" name="<?php $this->_p('portfolio') ?>" style="T3Xhtml" />
	</div>
</section>
<?php endif ?>