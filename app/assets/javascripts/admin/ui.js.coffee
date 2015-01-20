$ ->
  $('[data-toggle=tooltip], [rel=tooltip], [rel="tooltip nofollow"]').tooltip()

  $('.sortable').sortable().on 'sortupdate', (e) ->
    console.log $(this).find('li')
    
    dataIDList = $(this).find('li').map(->
      $(this).data 'id'
    ).get().join(',')

    $.ajax
      type: 'POST'
      url: $(@).data('update-url')
      data: { p: dataIDList }