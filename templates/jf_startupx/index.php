<?php
/*------------------------------------------------------------------------
# JF_STARTUPX! - JOOMFREAK.COM JOOMLA 3 TEMPLATE 
# May 2021
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
$option     = $app->input->getCmd('option', '');
$view       = $app->input->getCmd('view', '');
$layout     = $app->input->getCmd('layout', '');
$task       = $app->input->getCmd('task', '');
$itemid     = $app->input->getCmd('Itemid', '');
$sitename   = $app->get('sitename');
$menu       = $app->getMenu();
$active     = $menu->getItem($itemid);
$menuparams = $menu->getParams( $active->id );
$pageclass  = $menuparams->get( 'pageclass_sfx' );
$font 	    = $this->params->get('googleFont');
$gmapAPIKey         = $this->params->get('gmapAPIKey', '');
$latitude           = (float)$this->params->get( 'latitude', '' );
$longitude          = (float)$this->params->get( 'longitude', '' );
$markerdescription  = $this->params->get('markerdescription', '');

// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');

$doc->addScript($this->baseurl . '/templates/' . $this->template . '/scripts/js/owl.carousel.min.js');
$doc->addScript($this->baseurl . '/templates/' . $this->template . '/scripts/js/imagesloaded.min.js');
$doc->addScript($this->baseurl . '/templates/' . $this->template . '/scripts/js/isotope.pkgd.min.js');
$doc->addScript($this->baseurl . '/templates/' . $this->template . '/scripts/js/template.js');

// Add Stylesheets
$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/bootstrap.min.css');
$doc->addStyleSheet('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap');
if($font == 'OpenSans')
	$doc->addStyleSheet('https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,600italic,700,700italic');
if($font == 'Lato')
	$doc->addStyleSheet('https://fonts.googleapis.com/css?family=Lato:300,300italic,400,400italic,700,700italic,900,900italic');
if($font == 'PTSans')
	$doc->addStyleSheet('https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic');
if($font == 'SourceSansPro')
	$doc->addStyleSheet('https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400italic,600,600italic,700,700italic');
if($font == 'Nobile')
	$doc->addStyleSheet('https://fonts.googleapis.com/css?family=Nobile:400,400italic,700,700italic');
if($font == 'Ubuntu')
	$doc->addStyleSheet('https://fonts.googleapis.com/css?family=Ubuntu:300,300italic,400,400italic,500,500italic,700,700italic');
if($font == 'IstokWeb')
	$doc->addStyleSheet('https://fonts.googleapis.com/css?family=Istok+Web:400,400italic,700,700italic');
if($font == 'Exo2')
	$doc->addStyleSheet('https://fonts.googleapis.com/css?family=Exo+2:400,400italic,500,500italic,600,600italic,700,700italic,800,800italic');

$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/font-awesome.min.css');
$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/owl.carousel.css');
$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/template.css');

// Load optional RTL Bootstrap CSS
JHtml::_('bootstrap.loadCss', false, $this->direction);

// Adjusting content width
if ($this->countModules('left') && $this->countModules('right')) {
	$span = "col-md-5";
} elseif ($this->countModules('left') && !$this->countModules('right')) {
	$span = "col-md-8";
} elseif (!$this->countModules('left') && $this->countModules('right')) {
	$span = "col-md-8";
} else {
	$span = "col-md-12";
}

// Logo file or site title param
if ($this->params->get('logoOption') == 1 && $this->params->get('logoFile')) {
	$logo = '<img class="img-fluid logo" src="' . JUri::root() . $this->params->get('logoFile') . '" alt="' . $sitename . '" />';
} elseif ($this->params->get('logoOption') == 2 && $this->params->get('logoText')) {
	$logo = '<span class="site-title" title="' . $sitename . '">' . htmlspecialchars($this->params->get('logoText')) . '</span>';
} else {
	$logo = '<span class="site-title" title="' . $sitename . '">' . $sitename . '</span>';
}

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<jdoc:include type="head" />
	
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
	if ($this->params->get('templateColor')) {
		$primaryColor = $this->params->get('templateColor');
	}
	?>

	<style type="text/css">		
		:root {  
			--primary-color: <?php echo $primaryColor; ?>; 
			--body-font: '<?php echo $bodyFont; ?>', sans-serif;
		}
	</style>
	
	<?php if ($this->params->get('map')) : ?>
	<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/scripts/js/jquery.gmap.min.js"></script>
	<script src="https://maps.google.com/maps/api/js?key=<?php echo $gmapAPIKey; ?>" type="text/javascript"></script>

	<script>
	jQuery(document).ready(function(){
		// Map Markers
		var mapMarkers = [{     
			latitude: <?php echo $latitude ?>,
			longitude: <?php echo $longitude ?>,
			popup: true,
			icon: { 
				image: "<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/map_marker.png",
				iconsize: [44,48],
				iconanchor: [12,46],
				infowindowanchor: [12, 0] 
			} 
		}];

		// Map Initial Location
		var initLatitude = <?php echo $latitude ?>;
		var initLongitude = <?php echo $longitude ?>;

		// Map Extended Settings
		var map = jQuery("#map").gMap({
			controls: {
				panControl: true,
				zoomControl: true,
				mapTypeControl: true,
				scaleControl: true,
				streetViewControl: true,
				overviewMapControl: true
			},
			scrollwheel: false,
			markers: mapMarkers,
			latitude: initLatitude,
			longitude: initLongitude,
			zoom: 12
		});
	});
	</script>
	<?php endif; ?>
	
	<!--[if lt IE 9]>
		<script src="<?php echo JUri::root(true); ?>/media/jui/js/html5.js"></script>
	<![endif]-->
	
</head>

<body class="site 
	<?php if ($menu->getActive() == $menu->getDefault($lang->getTag())) echo 'home'; ?>
	<?php echo $pageclass; ?>
	<?php echo $option
	. ' view-' . $view
	. ($layout ? ' layout-' . $layout : ' no-layout')
	. ($task ? ' task-' . $task : ' no-task')
	. ($itemid ? ' itemid-' . $itemid : '');
	echo ($this->direction == 'rtl' ? ' rtl' : '');
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
						<jdoc:include type="modules" name="mainnav" style="none" />
					</div>
				</div>
				
				<div class="sub-main">
					<?php if ($this->countModules('top-search')) : ?>
					<div class="top-search">
						<jdoc:include type="modules" name="top-search" style="none" />
					</div>
					<?php endif; ?>
					
					<?php if ($this->countModules('top-cart')) : ?>
					<div class="top-cart">
						<a href="<?php echo JRoute::_("index.php?option=com_virtuemart&view=cart"); ?>"><span class="cart-button"><i class="fa  fa-shopping-cart"></i><span class="cart-total">0</span></span></a>
					</div>
					<?php endif; ?>
				</div>
			</nav>
		</div>
	</header>
	
	<?php if ($this->countModules('breadcrumbs')) : ?>
	<div id="breadcrumbs">
		<div class="container">
			<h2><?php echo $menu->getActive()->title; ?></h2>
			<jdoc:include type="modules" name="breadcrumbs" style="none" />
		</div>
	</div>
	<?php endif; ?>
	
	<main id="content" role="main">
		<?php if($option == 'com_sppagebuilder') { ?>
			<jdoc:include type="message" />
			<jdoc:include type="component" />
		<?php } else { ?>
		<div class="container">
			<div class="row">
				<div class="<?php echo $span; ?>">
					<jdoc:include type="message" />
					<jdoc:include type="component" />
				</div>
				<?php if ($this->countModules('right')) : ?>
				<div class="col-md-4">
					<div class="sidebar">
						<jdoc:include type="modules" name="right" style="xhtml" />
					</div>
				</div>
				<?php endif; ?>
			</div>
		</div>
		<?php } ?>
	</main>
	
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					
					<jdoc:include type="modules" name="footer" style="jfxhtml" />
						
				</div>
					
				<div class="jf">
					<a href="https://www.joomfreak.com" target="_blank" class="jflink">joomfreak</a>
				</div> 
			</div>
		</div>
		
		<div class="copyright-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-12 text-lg-left text-md-center text-center">
						<?php if($this->params->get('social')) : ?>
						<div class="social-btns">
							<?php if ($this->params->get('twitterIcon') && $this->params->get('twitterLink') != '') : ?>
								<a href="<?php echo $this->params->get('twitterLink'); ?>" target="_blank"><i class="fa fa-twitter"></i></a>
							<?php endif; ?>	
							<?php if ($this->params->get('facebookIcon') && $this->params->get('facebookLink') != '') : ?>
								<a href="<?php echo $this->params->get('facebookLink'); ?>" target="_blank"><i class="fa fa-facebook"></i></a>
							<?php endif; ?>
							<?php if ($this->params->get('linkedInIcon') && $this->params->get('linkedInLink') != '') : ?>
								<a href="<?php echo $this->params->get('linkedInLink'); ?>" target="_blank"><i class="fa fa-linkedin"></i></a>
							<?php endif; ?>
						</div>
						<?php endif; ?>
					</div>
					
					<div class="col-lg-6 col-md-12 text-lg-right text-md-center text-center">
						Copyright &copy; <?php echo date('Y'); ?> . Powered by <a href="https://www.kreatif.it" target="_blank" title="Kreatif">Kreatif</a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
	<div id="btn-to-top-wrap">
		<a id="btn-to-top" class="circled" href="javascript:void(0);" data-visible-offset="800"></a>
	</div>
	
	<jdoc:include type="modules" name="debug" style="none" />
</body>
</html>