$(document).on('page:load', function() {
  initializeDateFields();
  fadeOutFlashMessages();
  initializeSelectOptions();
  createTreeViewForOrganizarionStructure();
  showAjaxCompleteNotification();
});

$(document).ready(function() {
  initializeDateFields();
  fadeOutFlashMessages();
  initializeSelectOptions();
  createTreeViewForOrganizarionStructure();
  showAjaxCompleteNotification();
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

var createTreeViewForOrganizarionStructure = function(){
  var tree = $("#tree-view");

  if(tree.length > 0 ){
    OrganizationStructureTreeView.create(tree.attr("data-treeUrl"));
  }
}

var updateTreeViewForOrganizarionStructure = function () {
  createTreeViewForOrganizarionStructure();
}

var showAjaxCompleteNotification = function(){
  $(document).ajaxComplete(function(event, request) {
    var msg = request.getResponseHeader('X-Message');
    var type = request.getResponseHeader('X-Message-Type');
    console.log(msg);

    if(msg){
      $("#flash-message").html(flashMessageHTML(type, msg));
      fadeOutFlashMessages();
    }
  });
}

var flashMessageHTML = function(type, msg){
  var html = '<div class="alert fade in alert-success"><button class="close" data-dismiss="alert">×</button>' + msg + '</div>';

  return html
}