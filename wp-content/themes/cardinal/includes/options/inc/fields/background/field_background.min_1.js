!function(a){"use strict";redux.field_objects=redux.field_objects||{},redux.field_objects.background=redux.field_objects.background||{},redux.field_objects.background.init=function(b){b||(b=a(document).find(".redux-group-tab:visible").find(".redux-container-background:visible")),a(b).each(function(){var b=a(this),c=b;if(b.hasClass("redux-field-container")||(c=b.parents(".redux-field-container:first")),!c.is(":hidden")&&c.hasClass("redux-field-init")){c.removeClass("redux-field-init"),b.find(".redux-remove-background").unbind("click").on("click",function(b){return b.preventDefault(),redux.field_objects.background.removeImage(a(this).parents(".redux-container-background:first")),!1}),b.find(".redux-background-upload").unbind().on("click",function(b){redux.field_objects.background.addImage(b,a(this).parents(".redux-container-background:first"))}),b.find(".redux-background-input").on("change",function(){redux.field_objects.background.preview(a(this))}),b.find(".redux-color").wpColorPicker({change:function(b,c){a(this).val(c.color.toString()),redux_change(a(this)),a("#"+b.target.id+"-transparency").removeAttr("checked"),redux.field_objects.background.preview(a(this))},clear:function(b,c){a(this).val(c.color.toString()),redux_change(a(this).parent().find(".redux-color-init")),redux.field_objects.background.preview(a(this))}}),b.find(".redux-color").on("blur",function(){var c=a(this).val(),d="#"+a(this).attr("id");"transparent"===c?(a(this).parent().parent().find(".wp-color-result").css("background-color","transparent"),b.find(d+"-transparency").attr("checked","checked")):(colorValidate(this)===c&&0!==c.indexOf("#")&&a(this).val(a(this).data("oldcolor")),b.find(d+"-transparency").removeAttr("checked"))}),b.find(".redux-color").on("focus",function(){a(this).data("oldcolor",a(this).val())}),b.find(".redux-color").on("keyup",function(){var c=a(this).val(),d=colorValidate(this),e="#"+a(this).attr("id");"transparent"===c?(a(this).parent().parent().find(".wp-color-result").css("background-color","transparent"),b.find(e+"-transparency").attr("checked","checked")):(b.find(e+"-transparency").removeAttr("checked"),d&&d!==a(this).val()&&a(this).val(d))}),b.find(".color-transparency").on("click",function(){if(a(this).is(":checked"))b.find(".redux-saved-color").val(a("#"+a(this).data("id")).val()),b.find("#"+a(this).data("id")).val("transparent"),b.find("#"+a(this).data("id")).parent().parent().find(".wp-color-result").css("background-color","transparent");else if("transparent"===b.find("#"+a(this).data("id")).val()){var c=a(".redux-saved-color").val();""===c&&(c=a("#"+a(this).data("id")).data("default-color")),b.find("#"+a(this).data("id")).parent().parent().find(".wp-color-result").css("background-color",c),b.find("#"+a(this).data("id")).val(c)}redux.field_objects.background.preview(a(this)),redux_change(a(this))});var d={width:"resolve",triggerChange:!0,allowClear:!0},e=b.find(".select2_params");if(e.size()>0){var f=e.val();f=JSON.parse(f),d=a.extend({},d,f)}b.find(" .redux-background-repeat, .redux-background-clip, .redux-background-origin, .redux-background-size, .redux-background-attachment, .redux-background-position").select2(d)}})},redux.field_objects.background.preview=function(b){var c=a(b).parents(".redux-container-background:first"),d=a(c).find(".background-preview");if(d){var e=!0,f="height:"+d.height()+"px;";a(c).find(".redux-background-input").each(function(){var b=a(this).serializeArray();b=b[0],b&&-1!=b.name.indexOf("[background-")&&""!==b.value&&(e=!1,b.name=b.name.split("[background-"),b.name="background-"+b.name[1].replace("]",""),f+="background-image"==b.name?b.name+':url("'+b.value+'");':b.name+":"+b.value+";")}),e?d.slideUp():d.attr("style",f).fadeIn()}},redux.field_objects.background.addImage=function(b,c){b.preventDefault();var d,e=a(this);return d?void d.open():(d=wp.media({multiple:!1,library:{},title:e.data("choose"),button:{text:e.data("update")}}),d.on("select",function(){var b=d.state().get("selection").first();if(d.close(),"image"===b.attributes.type){c.find(".upload").val(b.attributes.url),c.find(".upload-id").val(b.attributes.id),c.find(".upload-height").val(b.attributes.height),c.find(".upload-width").val(b.attributes.width),redux_change(a(c).find(".upload-id"));var e=b.attributes.url;if("undefined"!=typeof b.attributes.sizes&&"undefined"!=typeof b.attributes.sizes.thumbnail)e=b.attributes.sizes.thumbnail.url;else if("undefined"!=typeof b.attributes.sizes){var f=b.attributes.height;for(var g in b.attributes.sizes){var h=b.attributes.sizes[g];h.height<f&&(f=h.height,e=h.url)}}else e=b.attributes.icon;c.find(".upload-thumbnail").val(e),c.find(".upload").hasClass("noPreview")||c.find(".screenshot").empty().hide().append('<img class="redux-option-image" src="'+e+'">').slideDown("fast"),c.find(".redux-remove-background").removeClass("hide"),c.find(".redux-background-input-properties").slideDown(),redux.field_objects.background.preview(c.find(".upload"))}}),void d.open())},redux.field_objects.background.removeImage=function(b){if(b.find(".redux-remove-background").addClass("hide")){b.find(".redux-remove-background").addClass("hide"),b.find(".upload").val(""),b.find(".upload-id").val(""),b.find(".upload-height").val(""),b.find(".upload-width").val(""),redux_change(a(b).find(".upload-id")),b.find(".redux-background-input-properties").hide();var c=b.find(".screenshot");c.slideUp(),b.find(".remove-file").unbind(),a(".section-upload .upload-notice").length>0&&a(".redux-background-upload").remove()}}}(jQuery);