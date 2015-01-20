$ ->
  $('form').on 'click', '.add_weixin_sub_menu', () ->
    template = Handlebars.compile($("#sub-button-template").html())
    fields = $(this).parents('fieldset')
    html = template({})
    fields.before(html)



  $('form').on 'click', '.remove_weixin_sub_menu', () ->
    fields = $(this).parents('fieldset')
    fields.remove()



