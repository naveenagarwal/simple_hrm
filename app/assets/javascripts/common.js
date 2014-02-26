$(document).on('page:load', function() {
  initializeDateFields();
});

$(document).ready(function() {
  initializeDateFields();
});

var initializeDateFields = function(){
  $(".date").datepicker();
  $(".datetime").datepicker({
  });
}