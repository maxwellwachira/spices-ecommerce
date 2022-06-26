/**
 * @package     Joomla.Site
 * @subpackage  Templates.protostar
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @since       3.2
 */
 
if (typeof Virtuemart === "undefined")
	Virtuemart = {};

(function($) {
	
	Virtuemart.customUpdateVirtueMartCartTotal = function(el, options){
		$.ajaxSetup({ cache: false })
		$.getJSON("index.php?option=com_virtuemart&nosef=1&view=cart&task=viewJS&format=json" + Virtuemart.vmLang,
			function (datas, textStatus) {
				$(".cart-total").html(datas.totalProduct);
			}
		);
	};
	
	Virtuemart.customUpdateVirtueMartCartTotal();
	
	$(document).ready(function() {
		
		$('.teams .owl-carousel').owlCarousel({
			autoplay: true,
			loop: true,			
			margin: 30,			
			responsive:{
				0:{
					items: 1
				},
				600:{
					items: 2
				},
				1000:{
					items: 3,
					nav: true,
					navText: ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"]
				},
				1200:{
					items: 4,
					nav: true,
					navText: ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"]
				}
			}
		});
		
		$('.bannergroup').wrapInner('<div class="owl-carousel"></div>');
		
		$('.bannergroup .owl-carousel').owlCarousel({
			autoplay: true,
			loop: true,
			margin: 30,
			responsive:{
				0:{
					items:1,
					dots: true
				},
				600:{
					items:2,
					dots: true
				},
				1000:{
					items:4,
					dots: false,
					nav: true,
					navText: ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"]
				}
			}
		});
		
		$('.itemRelated .owl-carousel').owlCarousel({
			autoplay: true,
			dots: true,
			loop: true,
			margin: 30,
			responsive:{
				0:{
					items:1
				},
				600:{
					items:2
				},
				1000:{
					items:3
				}
			}
		});

		$("#btn-to-top").click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
		
		/* mobile menu toggle */
		$('.navbar-toggler').click(function(e){
			e.preventDefault();
			$('#navbarSupportedContent').slideToggle();
		});
		
		if($(window).width() < 992) {
			$('#top-bar__navigation li.deeper.parent > span, #top-bar__navigation li.deeper.parent > a').click(function(){
				$(this).next().slideToggle();
				return false;
			});
		}
		
	});
	
	var lastScrollTop = 199;
	
	$(window).scroll(function(event){		
		if ($(this).scrollTop() > 700) {
            $("#btn-to-top-wrap").fadeIn();
        } else {
            $("#btn-to-top-wrap").fadeOut();
        }		
		
		($(this).scrollTop() > 200 ) ? $('#top-bar').addClass('is-fixed top-bar--dark') : $('#top-bar').removeClass('is-fixed top-bar--dark is-visible');
		
		st = $(this).scrollTop();
        if(st < lastScrollTop && st > 200) {
            $('#top-bar').addClass('is-visible');
        } else {
            $('#top-bar').removeClass('is-visible');
        }
        lastScrollTop = st;
    });
	
	$(window).load(function() {	
		var masonry_portfolio_selectors = $('.portfolio-filter .filter-item');

		if(masonry_portfolio_selectors!='undefined'){
			var masonry_portfolio = $('.portfolio-wrapper');
			masonry_portfolio.imagesLoaded( function(){
				 masonry_portfolio.isotope({
					itemSelector: '.portfolio-item',
					layoutMode: 'fitRows'
				});
			});

			masonry_portfolio_selectors.on('click', function(e){
				e.preventDefault();
				masonry_portfolio_selectors.removeClass('active');
				$(this).addClass('active');
				var selector = $(this).attr('data-filter');
				masonry_portfolio.isotope({ filter: selector });
				return false;
			});
		}

	});

})(jQuery);