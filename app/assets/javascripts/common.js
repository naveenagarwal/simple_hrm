$(document).on('page:load', function() {
  initializeDateFields();
  fadeOutFlashMessages();
  initializeSelectOptions();
  createTreeViewForOrganizarionStructure();
  showAjaxCompleteNotification();
  parentChildrenSelectCombo();
  ajaxLoaderDisplay();
});

$(document).ready(function() {
  initializeDateFields();
  fadeOutFlashMessages();
  initializeSelectOptions();
  createTreeViewForOrganizarionStructure();
  showAjaxCompleteNotification();
  parentChildrenSelectCombo();
  ajaxLoaderDisplay();
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

$(document).on("click", ".test-email-button", function(){
  var thisLink = $(this);
  var email = thisLink.parent().prev().val();
  var url = thisLink.data("url");

  if($.trim(email)){
    thisLink.hide();
    $.ajax({
      data: { email: email },
      dataType: "script",
      url: url
    });
  }

  return false;
});

var parentChildrenSelectCombo = function(){
  $("select.parent-select").change(function(){
    var html = "<option value></option>";
    var childrenOptions = $("select.parent-select option:selected").data("childrenoptions");

    if(childrenOptions){
      childrenOptions = childrenOptions.split(",");

      for(var i=0; i < childrenOptions.length; i++){
        html += "<option value=" + childrenOptions[i] + ">" + childrenOptions[i] + "</option>";
      }
    }
    console.log(html);
    $("select.children-select").html(html);
  });
}

var ajaxLoaderDisplay = function(){
  $(document).bind("ajaxSend", function(){
    $("#ajax-loader").show();
  }).bind("ajaxComplete", function(){
    $("#ajax-loader").hide();
  });
}