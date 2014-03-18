function treeView(){
}

// Expects the json data
treeView.create = function(url){
  $.ajax({
    dataType: "json",
    url: url
  })
  .done(function(data){ treeView.success(data) })
  .fail(function(error){ treeView.fail(error) });
}

treeView.success = function(data){
  alert("create tree view");
}

treeView.fail = function(data){
  alert("error getting data");
}
