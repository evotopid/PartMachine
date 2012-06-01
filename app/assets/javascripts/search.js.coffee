window.search = (search_url) ->
  query = $("#search_field").val()
  redirectTo search_url + query

window.searchKeyWasPressed = (event, search_url) ->
  if event.keyCode == 13
    window.search(search_url)

window.focusSearch = ->
  # only do if the search field exists
  searchField = $("#search_field")
  if searchField.length > 0 and searchField.val().length > 0
    searchField.focus()
    val = searchField.val()
    searchField.val("")
    searchField.val(val)

$ ->
  window.focusSearch()
