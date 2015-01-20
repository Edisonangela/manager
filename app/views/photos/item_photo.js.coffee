parent = $("#<%= params[:target] %>").parents('.upload')
parent.find('.img-holder').html("<%=j image_tag(@image.data.url(:item_photo)) %>")
parent.find('.target_input').attr('value', '<%= @image.data.url %>')