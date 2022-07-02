<?php
/**
 * @package J2Store
 * @copyright Copyright (c)2014-17 Ramesh Elamathi / J2Store.org
 * @license GNU GPL v3 or later
 */

// No direct access
defined('_JEXEC') or die;
?>

<?php echo $this->loadTemplate('images'); ?>

<?php echo $this->loadTemplate('title'); ?>
<?php if(isset($this->product->event->afterDisplayTitle)) : ?>
		<?php echo $this->product->event->afterDisplayTitle; ?>
<?php endif;?>

<?php if(isset($this->product->event->beforeDisplayContent)) : ?>
	<?php echo $this->product->event->beforeDisplayContent; ?>
<?php endif;?>

<?php echo $this->loadTemplate('description'); ?>

<?php echo $this->loadTemplate('price'); ?>

<?php if($this->params->get('list_show_product_sku', 1)) : ?>
	<?php echo $this->loadTemplate('sku'); ?>
<?php endif; ?>

<?php if($this->params->get('list_show_product_stock', 1) && J2Store::product()->managing_stock($this->product->variant)): ?>
	<?php echo $this->loadTemplate('stock'); ?>
<?php endif; ?>
<?php if($this->params->get('catalog_mode', 0) == 0): ?>



<?php endif; ?>

<?php if(isset($this->product->event->afterDisplayContent)) : ?>
	<?php echo $this->product->event->afterDisplayContent; ?>
<?php endif;?>

