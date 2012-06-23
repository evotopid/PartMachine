function show_notice ( message, remove_old ) {
  if (remove_old == null) {
    remove_old = true;
  }
  
  if (remove_old) {
    $("#alerts").html("");
  }
  
  $("#alerts").append('<p class="notice">'+message+"</p>");
}