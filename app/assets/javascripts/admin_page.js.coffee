ready ->
$( "#target" ).click(function() {
  alert( "Handler for .click() called." );
});


$(document).ready(ready)
$(document).on('page:load', ready)