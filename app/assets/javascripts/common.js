$(document).on('page:load', function() {
  initializeDateFields();
  fadeOutFlashMessages();
  initializeSelectOptions();
  createTreeViewForOrganizarionStructure();
});

$(document).ready(function() {
  initializeDateFields();
  fadeOutFlashMessages();
  initializeSelectOptions();
  createTreeViewForOrganizarionStructure();
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
