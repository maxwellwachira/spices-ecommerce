<?php
/** 
 *------------------------------------------------------------------------------
 * @package       T3 Framework for Joomla!
 *------------------------------------------------------------------------------
 * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.
 * @license       GNU General Public License version 2 or later; see LICENSE.txt
 * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github 
 *                & Google group to become co-author)
 * @Google group: https://groups.google.com/forum/#!forum/t3fw
 * @Link:         http://t3-framework.org 
 *------------------------------------------------------------------------------
 */


defined('_JEXEC') or die;
?>

<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>"
	  class='<jdoc:include type="pageclass" />'>

<head>
	<jdoc:include type="head" />
	<?php $this->loadBlock('head') ?>
	<?php 
		if ($this->getParam('boxed_layout', 1)) {
			$boxed_layout = 't3-boxed';
		} else {
			$boxed_layout = '';
		} 
	?>
</head>

<body>

<div class="t3-wrapper">
	<div class="t3-main-container <?php echo $boxed_layout; ?>">
  
  <?php $this->loadBlock('header') ?>
  
  <?php $this->loadBlock('slider') ?>
  
  <?php $this->loadBlock('navhelper') ?>

  <?php $this->loadBlock('spotlight-1') ?>
  
  <?php $this->loadBlock('spotlight-2') ?>

  <?php $this->loadBlock('footer') ?>

	</div>
</div>

</body>

</html>