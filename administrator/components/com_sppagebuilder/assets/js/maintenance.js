/**
* @package SP Page Builder
* @author JoomShaper http://www.joomshaper.com
* @copyright Copyright (c) 2010 - 2020 JoomShaper
* @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 or later
*/
jQuery((function(a){a(document).on("click",".action-fix-sppagebuilder-database",(function(e){e.preventDefault();var t=Joomla.getOptions("config"),n=a(this),o=a(".maintenance-window-wrapper");console.log(`${t.base}?option=${t.component}&view=maintenance&task=maintenance.fix`),a.ajax({type:"POST",url:`${t.base}?option=${t.component}&view=maintenance&task=maintenance.fix`,beforeSend:function(){n.attr("disabled","disabled"),o.html('<span class="fas fa-spinner fa-spin"></span> &nbsp;<strong>'+Joomla.JText._("COM_SPPAGEBUILDER_MAINTENANCE_PROGRESS")+"<strong>")},success:function(e){var t=a.parseJSON(e),i="";t?(i=t.data.errors.length>0?'<div class="alert alert-danger"><h4>'+Joomla.JText._("COM_SPPAGEBUILDER_MAINTENANCE_UNABLE_TO_FIX")+"</h4>"+Joomla.JText._("COM_SPPAGEBUILDER_MAINTENANCE_ISSUE_MESSAGE")+"</div>":"",t.data.html.length>0?i+=t.data.html:i='<div class="alert alert-info">'+Joomla.JText._("COM_SPPAGEBUILDER_MAINTENANCE_IS_UPTODATE")+"</div>",0===t.data.errors.length?n.attr("disabled","disabled"):n.removeAttr("disabled","disabled")):i='<div class="alert alert-info">'+Joomla.JText._("COM_SPPAGEBUILDER_MAINTENANCE_IS_UPTODATE")+"</div>",o.html(i)}})}))}));