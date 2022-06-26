<?php
/*------------------------------------------------------------------------
# JF_CRYPTO! - JOOMFREAK.COM JOOMLA 3 TEMPLATE 
# August 2019
# ------------------------------------------------------------------------
# COPYRIGHT: (C) 2014 JOOMFREAK.COM / KREATIF GMBH
# LICENSE: Creative Commons Attribution
# AUTHOR: JOOMFREAK.COM
# WEBSITE: http://www.joomfreak.com - http://www.kreatif-multimedia.com
# EMAIL: info@joomfreak.com
-------------------------------------------------------------------------*/

defined('_JEXEC') or die;

$app             = JFactory::getApplication();
$doc             = JFactory::getDocument();
$user            = JFactory::getUser();
$lang            = JFactory::getLanguage();
$this->language  = $doc->language;
$this->direction = $doc->direction;

// Getting params from template
$params = $app->getTemplate(true)->params;

// Detecting Active Variables
$option   = $app->input->getCmd('option', '');
$view     = $app->input->getCmd('view', '');
$layout   = $app->input->getCmd('layout', '');
$task     = $app->input->getCmd('task', '');
$itemid   = $app->input->getCmd('Itemid', '');
$sitename = $app->get('sitename');
$menu      = $app->getMenu();
$active    = $menu->getItem($itemid);
$font 	   = $params->get('googleFont');
$tempcolor = $params->get('templateColor');

// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');

// Load optional RTL Bootstrap CSS
JHtml::_('bootstrap.loadCss', false, $this->direction);

// Logo file or site title param
if ($params->get('logoOption') == 1 && $params->get('logoFile')) {
	$logo = '<img class="img-fluid logo" src="' . JUri::root() . $params->get('logoFile') . '" alt="' . $sitename . '" />';
} elseif ($params->get('logoOption') == 2 && $params->get('logoText')) {
	$logo = '<span class="site-title" title="' . $sitename . '">' . htmlspecialchars($params->get('logoText')) . '</span>';
} else {
	$logo = '<span class="site-title" title="' . $sitename . '">' . $sitename . '</span>';
}

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title><?php echo $this->title; ?> <?php echo htmlspecialchars($this->error->getMessage(), ENT_QUOTES, 'UTF-8'); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" type="text/css" />

	<?php if($font == 'OpenSans') : ?>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,600italic,700,700italic" type="text/css" />
	<?php endif; ?>
	<?php if($font == 'Lato') : ?>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,300italic,400,400italic,700,700italic,900,900italic" type="text/css" />
	<?php endif; ?>
	<?php if($font == 'PTSans') : ?>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic" type="text/css" />
	<?php endif; ?>
	<?php if($font == 'SourceSansPro') : ?>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400italic,600,600italic,700,700italic" type="text/css" />
	<?php endif; ?>
	<?php if($font == 'Nobile') : ?>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nobile:400,400italic,700,700italic" type="text/css" />
	<?php endif; ?>
	<?php if($font == 'Ubuntu') : ?>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu:300,300italic,400,400italic,500,500italic,700,700italic" type="text/css" />
	<?php endif; ?>
	<?php if($font == 'IstokWeb') : ?>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Istok+Web:400,400italic,700,700italic" type="text/css" />
	<?php endif; ?>
	<?php if($font == 'Exo2') : ?>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Exo+2:400,400italic,500,500italic,600,600italic,700,700italic,800,800italic" type="text/css" />
	<?php endif; ?>

	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/font-awesome.min.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/template.css" type="text/css" />
	
	<?php 
	// Font
	$bodyFont = 'Poppins';

	if($font == 'OpenSans') {
		$bodyFont = 'Open Sans';
	}
	
	if($font == 'Lato') {
		$bodyFont = 'Lato';
	}
	
	if($font == 'PTSans') {
		$bodyFont = 'PT Sans';
	}

	if($font == 'SourceSansPro') {
		$bodyFont = 'Source Sans Pro';
	}
	 
	if($font == 'Nobile') {
		$bodyFont = 'Nobile';
	}
		
	if($font == 'Ubuntu') {
		$bodyFont = 'Ubuntu';
	}
		
	if($font == 'IstokWeb') {
		$bodyFont = 'Istok Web';
	}
		
	if($font == 'Exo2') {
		$bodyFont = 'Exo 2';
	}
	
	// Template color
	$primaryColor = '#f97a3f';
	if ($tempcolor) {
		$primaryColor = $tempcolor;
	}
	?>

	<style type="text/css">		
		:root {  
			--primary-color: <?php echo $primaryColor; ?>; 
			--body-font: '<?php echo $bodyFont; ?>', sans-serif;
		}
	</style>
	
	<script src="<?php echo JUri::root(true); ?>/media/jui/js/jquery.min.js"></script>
	<script src="<?php echo JUri::root(true); ?>/media/jui/js/bootstrap.min.js"></script>
	<script src="<?php echo $this->baseurl . '/templates/' . $this->template . '/scripts/js/jquery.countTo.js'; ?>"></script>
	<script src="<?php echo $this->baseurl . '/templates/' . $this->template . '/scripts/js/owl.carousel.min.js'; ?>"></script>
	<script src="<?php echo $this->baseurl . '/templates/' . $this->template . '/scripts/js/imagesloaded.min.js'; ?>"></script>
	<script src="<?php echo $this->baseurl . '/templates/' . $this->template . '/scripts/js/isotope.pkgd.min.js'; ?>"></script>
	<script src="<?php echo $this->baseurl . '/templates/' . $this->template . '/scripts/js/template.js'; ?>"></script>

	<!--[if lt IE 9]>
		<script src="<?php echo JUri::root(true); ?>/media/jui/js/html5.js"></script>
	<![endif]-->
</head>

<body class="site page-404 <?php echo $option
	. ' view-' . $view
	. ($layout ? ' layout-' . $layout : ' no-layout')
	. ($task ? ' task-' . $task : ' no-task')
	. ($itemid ? ' itemid-' . $itemid : '');
?>">
	
	<header id="top-bar" class="top-bar--light">						
		<div id="top-bar__inner">						
			<nav class="navbar navbar-expand-lg navbar-dark">
				<a class="navbar-brand" href="<?php echo $this->baseurl; ?>/">
					<?php echo $logo; ?>
				</a>
				
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"><i class="ion-navicon"></i></span>
				</button>
				
				<div id="navbarSupportedContent" class="collapse navbar-collapse">	
					<div id="top-bar__navigation" class="navigation">
						<?php echo $doc->getBuffer('modules', 'mainnav', array('style' => 'none')); ?>
					</div>
				</div>
				
				<div class="sub-main">
					<div class="top-search">
						<?php echo $doc->getBuffer('modules', 'top-search', array('style' => 'none')); ?>
					</div>

					<div class="top-cart">
						<a href="<?php echo JRoute::_("index.php?option=com_virtuemart&view=cart"); ?>"><span class="cart-button"><i class="fa  fa-shopping-cart"></i><span class="cart-total">0</span></span></a>
					</div>

					<?php echo $doc->getBuffer('modules', 'subnav', array('style' => 'none')); ?>
				</div>
			</nav>
		</div>
	</header>
	
	<div id="breadcrumbs">
		<div class="container">
			<h2>404 Error</h2>
		</div>
	</div>
	
	<div class="page-content">
		<div class="container">
			<div class="text-center">
				<h1>Ooops!</h1>
				<h2><?php echo JText::_('TPL_JF_STARTUPX_PAGE_NOT_FOUND'); ?></h2>
				<p><?php echo JText::_('TPL_JF_STARTUPX_ERROR_HAS_OCCURRED_WHILE_PROCESSING_YOUR_REQUEST'); ?></p>
				<p><a class="btn btn-style-2" href="<?php echo $this->baseurl; ?>/"><?php echo JText::_('TPL_JF_STARTUPX_THE_HOME_PAGE'); ?></a></p>
			</div>
		</div>
	</div>
	
	<?php echo $doc->getBuffer('modules', 'debug', array('style' => 'none')); ?>
</body>
</html>
