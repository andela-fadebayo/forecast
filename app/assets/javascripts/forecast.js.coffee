flashCallback = (_this) ->
  $('.flash').fadeOut()
  return

$('document').ready ->
  $('.flash').bind 'click', (e) ->
    flashCallback()
    return
  setTimeout flashCallback, 4000
  return