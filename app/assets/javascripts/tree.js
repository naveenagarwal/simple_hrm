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

  var html = "";
  var structure = data.structure;
  var parent_ids = data.parent_ids;

  treeView.createParentNode(parent_ids[0], structure[0]);

  for(var i = 0; i < parent_ids.length; i++){
    html = treeView.createHTML(parent_ids[i], structure);
    treeView.insertHTML(parent_ids[i], html);
  }
}

treeView.createParentNode = function(parent_id, structure){

  var html = "<ul>";

  html += "<li id='node-" + structure.id + "'>";
  html += "<a href='#'>" + structure.unit_id + "</a>";
  html += "</li>";
  html += "</ul>";

  $("#tree-view").html(html);
}

treeView.createHTML = function(parent_id, structure){

  var html = "<ul>";

  for(var i = 1; i < structure.length; i++){

    if(parent_id == structure[i].parent_id){

      html += "<li id='node-" + structure[i].id + "'>";
      html += "<a href='#'>" + structure[i].unit_id + "</a>";
      html += "<span>";
      html += "<a class='tree-links-no-border' data-remote=true href='/organization/organization_structures/" + structure[i].id + "/edit'>";
      html += "<img src='/assets/edit-icon-16.png' class='icon-list has-tooltip' title='Edit' data-original-title='Edit'>";
      html += "</a>"
      html += "<a class='tree-links-no-border' data-remote=true data-method='delete' href='/organization/organization_structures/" + structure[i].id + "'>";
      html += "<img src='/assets/delete-icon-16.png' class='icon-list has-tooltip' title='Destroy' data-original-title='Destroy'>";
      html += "</a>"
      html += "</span>";
      html += "</li>";

    }

  }

  html += "</ul>";

  return html;
}

treeView.insertHTML = function(parent_id, html){

  var liNode = $("li#node-" + parent_id);

  if ( liNode.length > 0){
    liNode.append(html);
  }else{
    $("#tree-view").html(html);
  }
}

treeView.fail = function(data){
  alert("Error Getting Data");
}


