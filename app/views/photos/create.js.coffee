parent = $("#<%= params[:target] %>").parents(".upload")
parent.find(".img-holder").html "<%=j image_tag(@image.data.url(@image.target_type.to_sym)) %>"
parent.find(".target_input").attr "value", "<%= @image.data.url %>"