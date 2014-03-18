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
  var html = [];
  var structure = data.structure;
  var parent_ids = data.parent_ids;

  for(var i = 0; i < parent_ids.length; i++){
    html = treeView.createHTML(parent_ids[i], structure);
    treeView.insertHTML(parent_ids[i], html);
  }
}

treeView.createHTML = function(parent_id, structure){

}

treeView.insertHTML = function(parent_id, html){

}

treeView.fail = function(data){
  alert("error getting data");
}


