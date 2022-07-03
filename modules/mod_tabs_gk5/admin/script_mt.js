
jQuery.noConflict();
// DOMContentLoaded event
jQuery(document).ready(function() {
	// initialize the configuration manager
	//TabsGK5ConfigManager();
	// initialize the main class
	var settings = new TabsGK5Settings();
	// get the updates
	//settings.getUpdates();
});

/*
 *
 * Main class
 *
 */
function TabsGK5Settings() {
	// class fields
	this.options = {
		tabs : null, // tabs data in JSON format
		translations : null, // array for translations
		isDragged : false, // flag for dragging
		sortables : [] // Sortables object for tabs
	}
	this.initialize();
}

// constructor
TabsGK5Settings.prototype.initialize = function() {
	// helper handler
	$this = this;
	// handlers used in the code
	var add_form = jQuery('#gk_tab_add_form');
	var add_form_btns = add_form.find('.gk_tab_add_submit a');
	var add_form_scroll_wrap = add_form.find('.height_scroll');
	// decode the data
	this.options.tabs = JSON.decode(jQuery('#jform_params_tabs_data').html());
	// check if the tabs object is null - if yes - fill it with an empty array
	if(this.options.tabs == null || this.options.tabs == '') this.options.tabs = [];
	// put empty array for the translations
	this.options.translations = [];
	// initialize the forms
	this.formInit();
	// current mode
	var sourceMode = jQuery('#jform_params_module_data_source').attr('value');
	// add unvisible class
	if(sourceMode == 'external') {
		jQuery('a[href=#options-TABS_MANAGER]').parent().addClass('gkUnvisible');
	} else {
		jQuery('a[href=#options-EXTERNAL_SOURCES]').parent().addClass('gkUnvisible');
	} 
	// hide one of unnecessary tabs
	jQuery('#jform_params_module_data_source').change( function() {
		if(sourceMode != jQuery('#jform_params_module_data_source').attr('value')) {
			sourceMode = jQuery('#jform_params_module_data_source').attr('value');
			if(sourceMode == 'external') {
				jQuery('a[href=#options-TABS_MANAGER]').parent().addClass('gkUnvisible');
				jQuery('a[href=#options-EXTERNAL_SOURCES]').parent().removeClass('gkUnvisible');
			} else {
				jQuery('a[href=#options-TABS_MANAGER]').parent().removeClass('gkUnvisible');
				jQuery('a[href=#options-EXTERNAL_SOURCES]').parent().addClass('gkUnvisible');
			} 
		}
	});
	// get translations texts
	this.options.translations['module_text'] = add_form.find('.gk_tab_add_type option').eq(0).html();
	this.options.translations['xhtml_text'] = add_form.find('.gk_tab_add_type option').eq(1).html();
	this.options.translations['published_text'] = jQuery('#invisible').find('.gk_tab_item_state span').eq(0).html();
	this.options.translations['unpublished_text'] = jQuery('#invisible').find('.gk_tab_item_state span').eq(1).html();
	// hide unnecessary elements
	jQuery('#invisible').find('.gk_tab_item_state span').remove();
	// set the add form
	if(add_form.find('.gk_tab_add_type').attr('value') == 'module') {
		add_form.find('.gk_tab_add_content_xhtml').css('display', 'none');
		add_form.find('.gk_tab_add_content_module').css('display', 'block');
	} else {
		add_form.find('.gk_tab_add_content_xhtml').css('display', 'block');
		add_form.find('.gk_tab_add_content_module').css('display', 'none');
	}
	// add tab form events
	add_form.find('.gk_tab_add_type').change(function(){
		if(add_form.find('.gk_tab_add_type').attr('value') == 'module') {
			add_form.find('.gk_tab_add_content_xhtml').css('display', 'none');
			add_form.find('.gk_tab_add_content_module').css('display', 'block');
		} else {
			add_form.find('.gk_tab_add_content_xhtml').css('display', 'block');
			add_form.find('.gk_tab_add_content_module').css('display', 'none');
		}
	});
	// function used to avoid problems with height of the blocks
//	var add_form_scroll = new Fx.Tween(add_form_scroll_wrap, { 
//		duration: 250, 
//		property: 'height', 
//		onComplete: function() { 
//			if(add_form_scroll_wrap.getSize().y > 0) {
//				add_form_scroll_wrap.setStyle('height', 'auto'); 
//			} 
//		}
//	});
	// onClick event for the header in the tabs manager
	jQuery('#gk_tab_add_header').find('a').click(function(e) {
		e.stopPropagation();
		e.preventDefault();
		if(!e.target.hasClass('opened')) {
			e.target.addClass('opened');
			//add_form_scroll.start(add_form.find('.gk_tab_add').getSize().y);
		} else {
			e.target.removeClass('opened');
			add_form_btns[1].trigger('click');
		}
	});
	// cancel button
	add_form_btns[1].click(function(e) {
		if(e) {
			e.stopPropagation();
			e.preventDefault();
		}
		// clear the form
		add_form.find('.gk_tab_add_name').attr('value', '');
		add_form.find('.gk_tab_add_type').attr('value', 'xhtml');
		add_form.find('.gk_tab_add_content_xhtml').css('display', 'block');
		add_form.find('.gk_tab_add_content_module').css('display', 'none');
		add_form.find('.gk_tab_add_content_module').attr('value', 'tab1');
		add_form.find('.gk_tab_add_content_xhtml').attr('value', '');
		add_form.find('.gk_tab_add_published').attr('value', '1');
		add_form.find('.gk_tab_add_id').attr('value', '');
		add_form.find('.gk_tab_add_animation').attr('value', 'default');
		add_form.find('.gk_tab_add_content_access').attr('value', '1');
		// hide the form
		add_form_scroll_wrap.css('height', add_form_scroll_wrap.height() + 'px');
		//add_form_scroll.start(0);
		// document.id('gk_tab_add_header').getElement('a').removeClass('opened');
	});
	// save button
	console.log(add_form_btns[0]);
	var btn = add_form_btns[0];
	btn = jQuery(btn);
	btn.click(function(e) {

		e.stopPropagation();
		e.preventDefault();
		console.log(add_form_btns[0]);
		$this.create_item('new', false);
	});
	// generate the list
	this.options.tabs.each(function(i, tab) {
		$this.create_item(tab, true);
	});
	// enable drag'n'drop
//	$this.options.sortables = new GKSortables(document.id('tabs_list'), {
//		clone: true, 
//		opacity: 0.5, 
//		onStart: function(element, clone) {
//			clone.addClass('gk_tab_item_clone');
//			var iter = 0;
//			document.id('tabs_list').finds('.gk_tab_item').each(function(el) {
//				if(!el.hasClass('gk_tab_item_clone')) {
//					el.setProperty('data-order', iter);
//					iter++;
//				}
//			});
//			
//			document.id('tabs_list').addClass('dragging');
//			$this.options.isDragged = true;
//		},
//		onComplete: function(element) {
//			if(document.id('tabs_list').hasClass('dragging')) {
//				document.id('tabs_list').removeClass('dragging');
//			}
			// getting new order
//			var newOrder = [];
//			document.id('tabs_list').finds('.gk_tab_item').each(function(el, i) {
//				if(!el.hasClass('gk_tab_item_clone') && el.getProperty('data-order') != null) {
//					newOrder.push(el.getProperty('data-order').toInt());
//				}
//				el.removeProperty('data-order');
//			});
			// make a new order
//			var tempTabs = [];
//			newOrder.each(function(item,i) {
//				tempTabs[i] = $this.options.tabs[item];
//			});
			// save new tabs order
//			this.options.tabs = tempTabs;
			// put the data to textarea field
//			document.id('jform_params_tabs_data').innerHTML = JSON.encode(this.options.tabs);
			// to avoid problems with opening tab editor
//			(function() {
//				$this.options.isDragged = false;
//			}).delay(100);
//		}
//	});
	
};
	 
TabsGK5Settings.prototype.formInit = function() {
 	// fix the width of the options when the browser window is too small
 	jQuery('#module-sliders').parent().css('position','relative');
 	//
 	var baseW = jQuery('#module-sliders').width();
 	var minW = 540;

 	// adjust the inputs
 	jQuery('.input-pixels').each(function(i, el){el = jQuery(el); el.parent().html("<div class=\"input-prepend\">"+el.parent().html() + "<span class=\"add-on\">px</span></div>");});
 	jQuery('.input-percents').each(function(i, el){el = jQuery(el); el.parent().html("<div class=\"input-prepend\">"+el.parent().html() + "<span class=\"add-on\">%</span></div>");});
 	jQuery('.input-minutes').each(function(i, el){el = jQuery(el); el.parent().html("<div class=\"input-prepend\">"+el.parent().html() + "<span class=\"add-on\">minutes</span></div>");});
 	jQuery('.input-ms').each(function(i, el){el = jQuery(el); el.parent().html("<div class=\"input-prepend\">"+el.parent().html() + "<span class=\"add-on\">ms</span></div>");});
 };
 
 // function to create a new tab item
 TabsGK5Settings.prototype.create_item = function(source, init) {
 	$this = this;
 	var add_form = jQuery('#gk_tab_add_form');
 	var add_form_btns = add_form.find('.gk_tab_add_submit a');
 	// duplicate item structure
 	var item = jQuery('#invisible').find('.gk_tab_item').clone();
 	// get the values from the form
 	var name = (source == 'new') ? add_form.find('.gk_tab_add_name').attr('value') : source.name;
 	var type = (source == 'new') ? add_form.find('.gk_tab_add_type').attr('value') : source.type;
 	var module = (source == 'new') ? add_form.find('.gk_tab_add_content_module').attr('value') : (source.type == 'module') ? source.content : 'tab1';
 	var xhtml = (source == 'new') ? add_form.find('.gk_tab_add_content_xhtml').attr('value') : source.content;
 	var published = (source == 'new') ? add_form.find('.gk_tab_add_published').attr('value') : source.published;
 	var access = (source == 'new') ? add_form.find('.gk_tab_add_content_access').attr('value') : source.access;
 	var id = (source == 'new') ? add_form.find('.gk_tab_add_id').attr('value') : source.id;
 	var animation = (source == 'new') ? add_form.find('.gk_tab_add_animation').attr('value') : source.animation;
 	// put the values to the item
 	item.find('.gk_tab_item_name').html(name);
 	if(type == 'module') {
 		item.find('.gk_tab_item_type').html(this.options.translations['module_text']);
 	} else {
 		item.find('.gk_tab_item_type').html(this.options.translations['xhtml_text']);
 	}
 	item.find('.gk_tab_item_state').attr('class', (published == 1) ? 'gk_tab_item_state published' : 'gk_tab_item_state unpublished');
 	item.find('.gk_tab_item_state').attr('title', (published == 1) ? this.options.translations['published_text'] : this.options.translations['unpublished_text']);
 	
 	item.find('.gk_tab_item_access').html(add_form.find('.gk_tab_add_content_access option[value="'+access+'"]').html());
 	item.find('.gk_tab_item_access').attr("title", add_form.find('.gk_tab_add_content_access option[value="'+access+'"]').html());
 	//
 	// add the events to the item buttons
 	//
 	// fill the edit form
 	item.find('.gk_tab_edit_name').attr('value', name);
 	item.find('.gk_tab_edit_type').attr('value', type);
 	item.find('.gk_tab_edit_content_access').attr('value', access);
 	item.find('.gk_tab_edit_published').attr('value', published);
 	item.find('.gk_tab_edit_content_xhtml').attr('value', this.htmlspecialchars_decode(xhtml));
 	item.find('.gk_tab_edit_content_module').attr('value', module);
 	item.find('.gk_tab_edit_id').attr('value', id);
 	item.find('.gk_tab_edit_animation').attr('value', animation);
 	// edit
 	item.find('.gk_tab_item_desc').click(function(e){
 		if(e) {
 			e.stopPropagation();
 			e.preventDefault();
 		}
 		
 		if(!$this.options.isDragged) {
 			var scroller = item.find('.gk_tab_editor_scroll');
 			scroller.css('height', scroller.height() + "px");
 			//var fx = new Fx.Tween(scroller, { duration: 250, property: 'height', onComplete: function() { if(scroller.getSize().y > 0) scroller.css('height', 'auto'); } });
 			
 			if(scroller.height() > 0) {
 				//fx.start(0);
 				item.removeClass('isOpened');
 			} else {
 				item.parent.find('.gk_tab_item').each(function(i, it) {
 					if(it != item) it.finds('.gk_tab_edit_submit a').eq(1).trigger('click');
 				});
 			
 				//fx.start(scroller.find('div').getSize().y);
 				item.addClass('isOpened');
 			}
 		}
 	});
 	// publish / unpublish
 	item.find('.gk_tab_item_state').click(function(e) {
 		if(e){
 			e.stopPropagation();
 			e.preventDefault();
 		}
 		var btn = item.find('.gk_tab_item_state');
 		item.find('.gk_tab_edit_published').attr('value', btn.hasClass('published') ? 0 : 1);
 		btn.attr('class', btn.hasClass('published') ? 'gk_tab_item_state unpublished' : 'gk_tab_item_state published');
 		btn.attr('title', $this.options.translations[btn.hasClass('published') ? 'unpublished_text' : 'published_text']);
 		item.find('.gk_tab_edit_submit a').eq(0).trigger('click');
 	});
 	// set the content of the form
 	var itemMode = item.find('.gk_tab_edit_type').attr('value');
 	item.find('.gk_tab_edit_content_xhtml').css('display', itemMode == 'module' ? 'none' : 'block');
 	item.find('.gk_tab_edit_content_module').css('display', itemMode == 'module' ? 'block' : 'none');
 	// change event
 	item.find('.gk_tab_edit_type').change(function(){
 		var itemMode = item.find('.gk_tab_edit_type').attr('value');
 		item.find('.gk_tab_edit_content_xhtml').css('display', itemMode == 'module' ? 'none' : 'block');
 		item.find('.gk_tab_edit_content_module').css('display', itemMode == 'module' ? 'block' : 'none');
 	});
 	// remove
 	item.find('.gk_tab_item_remove').click(function(e){
 		if(e){
 			e.stopPropagation();
 			e.preventDefault();
 		}
 		// get the item ID on list
 		var item_id = item.parent().find('.gk_tab_item').eq(item);
 		// remove the object from the JSON array
 		$this.options.tabs.splice(item_id, 1);
 		// remove the item from list
 		item.remove();
 		// put the data to textarea field
 		jQuery('#jform_params_tabs_data').html(JSON.encode($this.options.tabs));
 	});
 	// cancel edit
 	item.find('.gk_tab_edit_submit a').eq(1).click(function(e) {
 		if(e){
 			e.stopPropagation();
 			e.preventDefault();
 		}
 		// hide the form
 		var scroller = item.find('.gk_tab_editor_scroll');
 		scroller.css('height', scroller.height() + "px");
 		//new Fx.Tween(scroller, { duration: 250, property: 'height' }).start(0);
 		item.removeClass('isOpened');
 	});
 	// save edit
 	item.find('.gk_tab_edit_submit a').eq(0).click(function(e) {
 		if(e){
 			e.stopPropagation();
 			e.preventDefault();
 		}
 		// get the data from editor
 		var name = item.find('.gk_tab_edit_name').attr('value');
 		var type = item.find('.gk_tab_edit_type').attr('value');
 		var access = item.find('.gk_tab_edit_content_access').attr('value');
 		var published = item.find('.gk_tab_edit_published').attr('value');
 		var xhtml = item.find('.gk_tab_edit_content_xhtml').attr('value');
 		var module = item.find('.gk_tab_edit_content_module').attr('value');
 		var id = item.find('.gk_tab_edit_id').attr('value');
 		var animation = item.find('.gk_tab_edit_animation').attr('value');
 		// set the data in the JSON object
 		var items = item.parent().find('.gk_tab_item');
 		var item_id = items.eq(item);
 		$this.options.tabs[item_id] = {
 			"name" : name,
 			"type" : type,
 			"content" : (type == 'module') ? module : $this.htmlspecialchars(xhtml),
 			"published" : published,
 			"access" : access,
 			"id": id,
 			"animation": animation
 		};
 		// update the item content
 		item.find('.gk_tab_item_name').html(name);
 		if(type == 'module') {
 			item.find('.gk_tab_item_type').html($this.options.translations['module_text']);
 		} else {
 			item.find('.gk_tab_item_type').html($this.options.translations['xhtml_text']);
 		}
 		 
 		item.find('.gk_tab_item_state').attr('class', (published == 1) ? 'gk_tab_item_state published' : 'gk_tab_item_state unpublished');
 		item.find('.gk_tab_item_state').attr('title', (published == 1) ? $this.options.translations['published_text'] : $this.options.translations['unpublished_text']);
 		item.find('.gk_tab_item_access').html(add_form.find('.gk_tab_add_content_access option[value="'+access+'"]').html());
 		item.find('.gk_tab_item_access').attr("title", add_form.find('.gk_tab_add_content_access option[value="'+access+'"]').innerHTML);
 		// hide the form
 		item.find('.gk_tab_edit_submit a').eq(1).trigger('click');
 		// put the data to textarea field
 		jQuery('#jform_params_tabs_data').html(JSON.encode($this.options.tabs));
 		item.removeClass('isOpened');
 	});
 	// put the data to object
 	if(source == 'new') { // only new objects
 		this.options.tabs.push({
 			"name" : name,
 			"type" : type,
 			"content" : (type == 'module') ? module : this.htmlspecialchars(xhtml),
 			"published" : published,
 			"access" : access,
 			"id": id,
 			"animation": animation
 		});
 	
 		// clear and hide the form
 		var b = add_form_btns[1];
 		b = jQuery(b);
 		b.trigger('click');
 		// put the data to textarea field
 		var obj = jQuery.parseJSON(this.options.tabs);
 		console.log(this.options.tabs);
 		console.log(obj);
 		jQuery('#jform_params_tabs_data').html(JSON.encode(this.options.tabs));
 	}
 	// put the item to the list
 	jQuery('#tabs_list').append(item);
 	//item.append(jQuery('#tabs_list'));
 	// add the new element to the sortables list
 	if(!init && jQuery('#tabs_list').find('.gk_tab_item')) {
 		console.log(jQuery('#tabs_list .gk_tab_item').last());
 		this.options.sortables.push(jQuery('#tabs_list .gk_tab_item').last());
 	}
 };
 
 // function to encode chars
 TabsGK5Settings.prototype.htmlspecialchars = function(string) {
 	console.log('strig'+string);
     string = string.toString();
     string = string.replace(/&/g, '[ampersand]').replace(/</g, '[leftbracket]').replace(/>/g, '[rightbracket]');
     return string;
 };
 // function to decode chars
 TabsGK5Settings.prototype.htmlspecialchars_decode = function(string) {
 console.log('strig'+string);
 	//string = string.toString();
 	//string = string.replace(/\[ampersand\]/g, '&').replace(/\[leftbracket\]/g, '<').replace(/\[rightbracket\]/g, '>');
 	return string;
 };
 
	 