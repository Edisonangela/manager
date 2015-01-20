$ ->
  $(".dinner-head .classify").click ->
    $(this).toggleClass "baby-blue"
    $(".classify-list,.fa-caret-down,.fa-caret-up").toggle()

  $(document).on 'click', '.check-model-default', (e) ->
    $(this).toggleClass 'check-model'
    n = $('.check-model').size()
    $('.buy-car .foods-num').text n

    input = $(this).parents('.dinner-item').find('input[type=checkbox]')

    input.trigger 'click'

  $(document).on 'click', 'a.buy-car', (e) ->
    $(this).parents('form').submit()


  $ ->
    $(document).on 'click', '.add', (e) ->
      num = parseInt($(this).siblings('input').val())
      if num >= 0
        num = num + 1
        $(this).siblings('input').val num

    $(document).on 'click', '.subtract', (e) ->
      num = parseInt($(this).siblings('input').val())
      if num >= 1
        num = num - 1
        $(this).siblings('input').val num
