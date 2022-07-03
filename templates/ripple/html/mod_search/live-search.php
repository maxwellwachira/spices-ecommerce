<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_search
 *
 * @copyright   Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>
<form class="form-search" action="<?php echo JRoute::_('index.php');?>" method="post">
	<a class="search-trigger"><i class="fa fa-search"></i></a>
	<div class="search<?php echo $moduleclass_sfx ?>">
		<?php
			$output = '<label for="mod-search-searchword" class="element-invisible">' . $label . '</label> ';
			$output = '<input name="searchword" id="mod-search-searchword" maxlength="'.$maxlength.'"  class="input'.$moduleclass_sfx.'" type="text" size="'.$width.'" placeholder="'.$text.'" />';

			if ($button) :
				if ($imagebutton) :
					$btn_output = ' <input type="image" value="' . $button_text . '" class="button" src="' . $img . '" onclick="this.form.searchword.focus();"/>';
				else :
					$btn_output = ' <button class="button btn btn-default" onclick="this.form.searchword.focus();"><i class="fa fa-search"></i></button>';
				endif;

				switch ($button_pos) :
					case 'top' :
						$output = $btn_output . '<br />' . $output;
						break;

					case 'bottom' :
						$output .= '<br />' . $btn_output;
						break;

					case 'right' :
						$output .= $btn_output;
						break;

					case 'left' :
					default :
						$output = $btn_output . $output;
						break;
				endswitch;

			endif;

			echo $output;
		?>
		<input type="hidden" name="task" value="search" />
		<input type="hidden" name="option" value="com_search" />
		<input type="hidden" name="Itemid" value="<?php echo $mitemid; ?>" />
	</div>
<script>
;(function($){
	$('.head-search .search');
	// search on trigger
	$(".search-trigger").click(function(){
	  $(this).toggleClass('i-search').next().fadeToggle().find('.input').focus();
	});
})(jQuery);
</script>
</form>
