window.search = (search_url) ->
  query = $("#search_field").val()
  redirectTo search_url + query

window.searchKeyWasPressed = (event, search_url) ->
  if event.keyCode == 13
    window.search(search_url)
