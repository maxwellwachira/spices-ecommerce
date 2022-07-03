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

jQuery.noConflict();
(function($){

	jQuery(function () {
		var scrollDiv = document.createElement("div");
		jQuery(scrollDiv).attr("id", "toTop").html("").appendTo("body");
		jQuery(window).scroll(function () {
			if (jQuery(this).scrollTop() != 0) {
				jQuery("#toTop").fadeIn();
			} else {
				jQuery("#toTop").fadeOut();
			}
		});
		jQuery("#toTop").click(function () {
			jQuery("body,html").animate({
				scrollTop: 0
			},
			800);
		});

	});

 	$(document).ready(function(){
		(function(){
			// Add class for mainmenu when scroller
           var mainnav = $('.t3-sticky');

				$(window).scroll(function() {
					if($(this).scrollTop() > 0) {
						mainnav.addClass('affix');
					} else {
						mainnav.removeClass('affix');
					}
				});
 		})();
 	});

	// Hide mainmenu when search open
	var setDisplay = function(){
		if ($('.search-trigger').hasClass('i-search')) {
			setTimeout(setDisplay, 0);
			$('.t3-wrapper').addClass('search-open');
		} else {
			setTimeout(setDisplay, 0);
			$('.t3-wrapper').removeClass('search-open');
		}
	};

	setDisplay();

})(jQuery);
