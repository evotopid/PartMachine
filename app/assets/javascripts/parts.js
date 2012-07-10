function part_refresh_sources() {
  // load the actual data of the part from the server
  $.ajax({
    url: window.location,
    dataType: "html",
    success: function (response) {
      // now display the sources
      $("#sources").html($("#sources", response).html());
      
      // and 
      listenToPopups();
    }
  });
}

function cancelEditPartButtonPressed() {
	// ask the user if he's sure that he want's to leave the
	// unsaved data in this form
	ok = confirm("Are you sure that you want to canel? If you cancel all the data you entered will be lost.");
	if (ok) {
		history.back();
	}
}