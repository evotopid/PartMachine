function bind_new_source_ajax_success() {
  $("#new_source").bind('ajax:success', function (event, data, status, xhr) {
    if (data.type == "fail") {
      // display error
      $("#ajax_errors").html("");
      $("#ajax_errors").append("<h2>"+data.message+"</h2>");
      
      if (data.errors.name != null) {
        $("#ajax_errors").append("Name "+data.errors.name+"<br>");
      }
      if (data.errors.url != null) {
        $("#ajax_errors").append("Url "+data.errors.url+"<br>");
      }
      
      // add errors class
      $("#ajax_errors").addClass("errors");
      
    } else if(data.type == "success") {
      // show success
      show_notice(data.message);
      
      // refresh part's sources
      part_refresh_sources();
      
      // remove errors class
      $("#ajax_errors").html("");
      $("#ajax_errors").removeClass("errors");
      
      // close facebox
      $.facebox.close();
    } else {
      // log error
      console.log( "got unrecognized data type: '"+data.type+"'" );
    }
  });
}

function delete_source (source_path) {
  // first let the user confirm
  ok = confirm("Are you sure you want to delete that source, that action can't be undone!");
  if (ok) {
    // start an ajax request
    $.ajax({
      url: source_path,
      type: 'DELETE',
      dataType: 'json',
      success: function (response) {
        if (response.type == 'success') {
          show_notice(response.message);
          part_refresh_sources();
        } else {
          alert("Got error while deleting: "+response.message);
        }
      }
    });
  }
}

$(document).ready(function(){
  bind_new_source_ajax_success();
});