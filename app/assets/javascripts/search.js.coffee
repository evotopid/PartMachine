window.searchTimer = null

window.search = (search_url) ->
  query = $("#search_field").val()
  redirectTo search_url + query

window.searchKeyWasPressed = (search_url) ->
  clearTimeout(window.searchTimer)
  window.searchTimer = setTimeout("window.search('"+search_url+"')", 700)
