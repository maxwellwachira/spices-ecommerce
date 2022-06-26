/**
 * mediahandler.js: for VirtueMart Mediahandler
 *
 * @package    VirtueMart
 * @subpackage Javascript Library
 * @authors    Patrick Kohl, Max Milbers
 * @copyright  Copyright (c) 2011-2016 VirtueMart Team. All rights reserved.
 * @license    http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */

jQuery(document).ready(function ($) {
	
	var media = $('#vmuikit-js-search-media').data()
	var searchMedia = $('input#vmuikit-js-search-media')
	searchMedia.click(function () {
		if (media.start > 0) media.start = 0
	})
	
	var media = $('#vmuikit-js-search-media').data()
	var searchMedia = $('input#vmuikit-js-search-media')
	searchMedia.click(function () {
		if (media.start > 0) media.start = 0
	})
	var searchMediaAuto = searchMedia.autocomplete({
		source:Virtuemart.medialink,
		position: {
			offset: '-8 0' // Shift 20px to the left, 4px down.
		},
		select:function (event, ui) {
			var item = ui.item
			//	image.file_url_thumb_img='<img src="'+item.file_url_thumb+'" alt="'+item.file_title+'" />'
			var template = $('#display-selected-media-template').html()
			var rendered = Mustache.render(template, {'medias':ui.item})
			var container = $('#vmuikit-js-medias-container')
			var renderedHTML = $(container).html() + rendered
			$(container).html(renderedHTML)
			$(this).val('')
			event.preventDefault()
		},
		minLength:1,
		delay:400,
		html:true
	})
	
	searchMediaAuto.data('ui-autocomplete')._resizeMenu = function () {
		var width = $('.search-media-boundary').outerWidth()
		this.menu.element.outerWidth(width)
	}
 
	searchMediaAuto.data('ui-autocomplete')._renderItem = function (ul, item) {
		// sublayouts/mustache/search_media.php
		var template = $('#search-media-template').html()
		var rendered = Mustache.render(template, {'media':item})
	  ul.addClass('uk-child-width-1-2@s uk-child-width-1-4@m uk-child-width-1-6@l') //Ul custom class here
		return $('<li>')
		.append('<a>' + rendered + '</a>')
		.appendTo(ul)
	}
	
	$('.vmuikit-js-pages').click(function (e) {
		e.preventDefault();
		if (searchMedia.val() =='') {
			searchMedia.val(' ');
			media.start = 0;
		} else if ($(this).hasClass('vmuikit-js-next')) media.start = media.start+16 ;
		else if (media.start > 0) media.start = media.start-16 ;
		searchMedia.autocomplete( 'option' , 'source' , Virtuemart.medialink+'&start='+media.start );
		searchMedia.autocomplete( 'search');
	});
	
	
	function imgPreviewCard (readerResult, filename) {
		$('#vmuikit-image-preview').removeClass('uk-hidden')
		$('#image-preview-card-title').text(filename)
		
		const img = document.createElement('img')
		img.setAttribute('id', 'img-preview-responsive')
		img.setAttribute('src', readerResult)
		img.setAttribute('data-name', filename)
		img.setAttribute('alt', filename)
		$('#image-preview-card-image').html(img)
		return
	}
	
	$('[name="upload"]').on('change', function (e) {
		e.preventDefault()
		const file = e.target.files[0]
		
		/* TODO
		const fileInput = uploadContainer.querySelector('.uk-form-custom>input')
		const preview = uploadContainer.querySelector('#image-preview')
		const alert = uploadContainer.parentElement.querySelector('.uk-upload-box>#vmuikit-error-alert-file-upload')
		const alertMessage = uploadContainer.parentElement.querySelector('.uk-upload-box>#vmuikit-error-alert-file-upload>div')
		*/
		let filename = file['name']
		
		/* TODO Can do some checkings on client side
		* 	 acceptedDocMimes = ['application/pdf', 'image/png', 'image/jpeg']
				 size = file['size']
				 fileType = file['type']
				 * add errors in alert box
		* */
		const reader = new FileReader()
		reader.onload = () => {
			imgPreviewCard(reader.result, filename)
		}
		reader.readAsDataURL(file)
		
		var media_action = $('#vmuikit-js-upload').find('[name=\'media[media_action]\']:checked')
		if (typeof $(media_action[0]).val() != 'undefined' && $(media_action[0]).val() == 0) {
			var mediaActionDefaultChecked = $('#vmuikit-js-upload').find('[id=\'media[media_action]upload\']')
			if (mediaActionDefaultChecked.length == 0) {
				mediaActionDefaultChecked = $('#vmuikit-js-upload').find('[id=\'media[media_action]replace\']')
			}
			mediaActionDefaultChecked.attr('checked', true)
		}
		
	})
	$('.vmuikit-media-action').on('change', function () {
		var media_action = $('#vmuikit-js-upload').find('[name=\'media[media_action]\']:checked')
		if (typeof $(media_action[0]).val() != 'undefined' && $(media_action[0]).val() == 0) {
			$('#vmuikit-image-preview').addClass('uk-hidden')
			$('#image-preview-card-title').text('')
			$('#image-preview-card-image').text('')
		}
	})
	
	$('#vmuikit-js-medias-container').sortable({
		update:function (event, ui) {
			$(this).find('.ordering').each(function (index, element) {
				$(element).val(index)
			})
		}
	})
	
	$('.vmuikit-js-edit-image').click(function (e) {
		//var virtuemart_media_id = $(this).parent().find("input").val();
		//console.log('edit-image', virtuemart_media_id)
		var closest = $(this).closest('.vmuikit-js-thumb-image')
		var virtuemart_media_id = closest.find('input[name=\'virtuemart_media_id[]\']').val()
		console.log('edit-image', virtuemart_media_id)
		$.getJSON('index.php?option=com_virtuemart&view=media&format=json&virtuemart_media_id=' + virtuemart_media_id,
				function (datas, textStatus) {
					if (datas.msg == 'OK') {
						$('#vmuikit-js-display-image').attr('src', datas.file_root + datas.file_url)
						$('#vmuikit-js-display-image').attr('alt', datas.file_title)
						$('#file_title').html(datas.file_title)
						if (datas.published == 1) $('#adminForm [name=\'media[media_published]\']').attr('checked', true)
						else $('#adminForm [name=media_published]').attr('checked', false)
						if (datas.file_is_downloadable == 0) {
							$('#media_rolesfile_is_displayable').attr('checked', true)
							//$("#adminForm [name=media_roles]").filter("value='file_is_downloadable'").attr('checked', false);
						} else {
							//$("#adminForm [name=media_roles]").filter("value='file_is_displayable'").attr('checked', false);
							$('#media_rolesfile_is_downloadable').attr('checked', true)
						}
						$('#adminForm [name=\'media[file_title]\']').val(datas.file_title)
						$('#adminForm [name=\'media[file_description]\']').val(datas.file_description)
						$('#adminForm [name=\'media[file_meta]\']').val(datas.file_meta)
						$('#adminForm [name=\'media[file_class]\']').val(datas.file_class)
						$('#adminForm [name=\'media[file_url]\']').val(datas.file_url)
						$('#adminForm [name=\'media[file_url_thumb]\']').val(datas.file_url_thumb)
						var lang = datas.file_lang.split(',')
						$('#adminForm [name=\'media[active_languages][]\']').val(lang).trigger('liszt:updated')
						$('[name=\'media[active_media_id]\']').val(datas.virtuemart_media_id)
						if (typeof datas.file_url_thumb !== 'undefined') {
							$('.vmuikit-js-info-image').attr('src', datas.file_root + datas.file_url_thumb_dyn)
						} else {
							$('.vmuikit-js-info-image').attr('src', '')
						}
					} else $('#file_title').html(datas.msg)
				})
	})
	
});

(function ($) {
	
	var methods = {
		media:function (mediatype, total) {
			var page = 0,
					max = 24,
					container = $(this)
			var pagetotal = Math.ceil(total / max)
			var cache = new Array()
			
			var formatTitle = function (title, currentArray, currentIndex, currentOpts) {
				var pagination = '', pagetotal = total / max
				if (pagetotal > 0) {
					pagination = '<span><<</span><span><</span>'
					for (i = 0; i < pagetotal; i++) {
						pagination += '<span>' + (i + 1) + '</span>'
					}
					pagination += '<span>></span><span>>></span>'
				}
				return '<div class="media-pagination">' + (title && title.length ? '<b>' + title + '</b>' : '') + ' ' + pagination + '</div>'
			}
			
			$('#media-dialog').delegate('.vmuikit-js-thumb-image', 'click', function (event) {
				event.preventDefault()
				var id = $(this).find('input').val(), ok = 0
				var inputArray = new Array()
				$('#vmuikit-js-medias-container input:hidden').each(
						function () {
							inputArray.push($(this).val())
						}
				)
			})
			
			$('#vmuikit-admin-ui-tabs').delegate('.vmuikit-js-remove', 'click', function () {
				$(this).closest('.vmuikit-js-thumb-image').fadeOut('500', function () {
					$(this).remove()
				})
			})
			
		}
	}
	$.fn.vmuikitmedia = function (method) {
		
		if (methods[method]) {
			return methods[method].apply(this, Array.prototype.slice.call(arguments, 1))
		} else if (typeof method === 'object' || !method) {
			return methods.init.apply(this, arguments)
		} else {
			$.error('Method ' + method + ' does not exist on Vm2 admin jQuery library')
		}
		
	}
})(jQuery)
//$('#ImagesContainer').media()

