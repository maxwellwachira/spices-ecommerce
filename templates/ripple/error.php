<?php
/**
 * @version		$Id: error.php 20196 2011-01-09 02:40:25Z ian $
 * @package		Joomla.Site
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
if (!isset($this->error)) {
	$this->error = JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
	$this->debug = false; 
}
?>
<!DOCTYPE html>
<!--[if IE 8]><html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" class="ie8"> <![endif]-->
<!--[if IE 9]><html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" class="ie"> <!--<![endif]-->


<head>
	<title><?php echo $this->error->getCode(); ?> - <?php echo $this->title; ?></title>
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/error.css" type="text/css" />
</head>
<body>
	<div class="error">
     	<div class="rectangle">
			<h1><?php echo $this->error->getCode(); ?></h1>      
			<p><?php echo JText::_('T3_ERROR_INFO'); ?> </p>     
		</div>

		<div id="errorboxoutline">
        
			<div id="errorboxbody">
				<h3 class="error-messages"><?php echo htmlspecialchars($this->error->getMessage()); ?></h3>
				
          
				<?php if (count(JModuleHelper::getModules('error-page'))) : ?>
				<div class="error-nav">
				<?php echo JText::_('JERROR_LAYOUT_PLEASE_TRY_ONE_OF_THE_FOLLOWING_PAGES'); ?> 
				<?php
					$modules	= JModuleHelper::getModules('error-page');
					$params		= array('style' => 'raw');
				
					foreach ($modules as $module) {
						echo JModuleHelper::renderModule($module, $params);
					}
				?>
				</div>
			<?php endif ?>	         			
			</div>

		</div>
      <div class="clr"></div>

	</div>
</body>
</html>
