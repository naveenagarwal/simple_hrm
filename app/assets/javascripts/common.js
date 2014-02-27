$(document).on('page:load', function() {
  initializeDateFields();
  fadeOutFlashMessages();
});

$(document).ready(function() {
  initializeDateFields();
  fadeOutFlashMessages();
});

var initializeDateFields = function(){
  $(".date").datepicker();
  $(".datetime").datepicker({
  });
}

var fadeOutFlashMessages = function(){
  setTimeout(function() {
    $("div.alert").removeClass("in");
    $("div.alert button.close").trigger("click");
  }, 2000);
}