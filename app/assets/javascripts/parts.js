function part_refresh_sources() {
  // load the actual data of the part from the server
  $.ajax({
    url: window.location,
    dataType: "html",
    success: function (response) {
      // now display the sources
      $("#sources").html($("#sources", response).html());
    }
  });
}