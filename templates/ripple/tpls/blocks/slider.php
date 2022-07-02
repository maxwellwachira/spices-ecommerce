<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>


<?php if ($this->countModules('slider')) : ?>
<!-- SLIDESHOW -->
<div class="wrap t3-slider">
	<div class="container">
	
    <?php if($this->countModules('slider')) : ?>
      <jdoc:include type="modules" name="<?php $this->_p('slider') ?>" style="raw" />
    <?php endif; ?>
	
	</div>
</div>
<!-- //SLIDESHOW -->
<?php endif ?>