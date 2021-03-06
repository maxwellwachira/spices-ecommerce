<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<!-- NAV HELPER -->
<?php if ($this->countModules('breadcrumbs')) : ?>
<nav class="wrap t3-navhelper <?php $this->_c('breadcrumbs') ?>">
	<div class="container">
		<jdoc:include type="modules" name="<?php $this->_p('breadcrumbs') ?>" />
	</div>
</nav>
<?php endif ?>
<!-- //NAV HELPER -->
