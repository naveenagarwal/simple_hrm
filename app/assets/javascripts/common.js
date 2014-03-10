$(document).on('page:load', function() {
  initializeDateFields();
  fadeOutFlashMessages();
  initializeSelectOptions();
});

$(document).ready(function() {
  initializeDateFields();
  fadeOutFlashMessages();
  initializeSelectOptions();
});

var initializeDateFields = function(){
  $(".date").datepicker();
  $(".datetime").datepicker();
  // $(".time").timepicker();
}

var fadeOutFlashMessages = function(){
  setTimeout(function() {
    $("div.alert").removeClass("in");
    $("div.alert button.close").trigger("click");
  }, 2000);
}

var initializeSelectOptions = function(){
  $(".select2").select2();
}