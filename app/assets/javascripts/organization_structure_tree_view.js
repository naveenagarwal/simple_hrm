function OrganizationStructureTreeView(){
}

// Expects the json data
OrganizationStructureTreeView.create = function(url){
  $.ajax({
    dataType: "json",
    url: url
  })
  .done(function(data){ OrganizationStructureTreeView.success(data) })
  .fail(function(error){ OrganizationStructureTreeView.fail(error) });
}

OrganizationStructureTreeView.success = function(data){

  var html = "";
  var structure = data.structure;
  var parent_ids = data.parent_ids;

  OrganizationStructureTreeView.createParentNode(parent_ids[0], structure[0]);

  for(var i = 0; i < parent_ids.length; i++){
    html = OrganizationStructureTreeView.createHTML(parent_ids[i], structure);
    OrganizationStructureTreeView.insertHTML(parent_ids[i], html);
  }
}

OrganizationStructureTreeView.createParentNode = function(parent_id, structure){

  var html = "<ul>";

  html += "<li id='node-" + structure.id + "'>";
  html += "<a href='#' class='highligh-on-hover has-tooltip' title='" + structure.title_text + "' data-original-title='" + structure.title_text + "'>" + structure.short_name + "</a>";
  html += "<span>";
  html += "<a class='tree-links-no-border' data-remote=true href='/organization/organization_structures/new?node_id=" + structure.node_id  + "&parent_id=" + structure.id + "'>";
  html += "<img src='/assets/new-icon-16.png' class='icon-list has-tooltip' title='New' data-original-title='New'>";
  html += "</a>"
  html += "<a class='tree-links-no-border' data-remote=true href='/organization/organization_structures/" + structure.id + "/edit'>";
  html += "<img src='/assets/edit-icon-16.png' class='icon-list has-tooltip' title='Edit' data-original-title='Edit'>";
  html += "</a>"
  html += "</span>";
  html += "</li>";
  html += "</ul>";

  $("#tree-view").html(html);
}

OrganizationStructureTreeView.createHTML = function(parent_id, structure){

  var html = "<ul>";

  for(var i = 1; i < structure.length; i++){

    if(parent_id == structure[i].parent_id){

      html += "<li id='node-" + structure[i].id + "'>";
      html += "<a href='#' class='highligh-on-hover has-tooltip' title='" + structure[i].title_text + "' data-original-title='" + structure[i].title_text + "'>" + structure[i].short_name + "</a>";
      html += "<span>";
      html += "<a class='tree-links-no-border' data-remote=true href='/organization/organization_structures/new?node_id=" + structure[i].node_id  + "&parent_id=" + structure[i].id + "'>";
      html += "<img src='/assets/new-icon-16.png' class='icon-list has-tooltip' title='New' data-original-title='New'>";
      html += "</a>"
      html += "<a class='tree-links-no-border' data-remote=true href='/organization/organization_structures/" + structure[i].id + "/edit'>";
      html += "<img src='/assets/edit-icon-16.png' class='icon-list has-tooltip' title='Edit' data-original-title='Edit'>";
      html += "</a>"
      html += "<a class='tree-links-no-border' data-confirm='Are you sure? Units under selected unit will also be deleted?' data-remote=true data-method='delete' href='/organization/organization_structures/" + structure[i].id + "'>";
      html += "<img src='/assets/delete-icon-16.png' class='icon-list has-tooltip' title='Destroy' data-original-title='Destroy'>";
      html += "</a>"
      html += "</span>";
      html += "</li>";

    }

  }

  html += "</ul>";

  return html;
}

OrganizationStructureTreeView.insertHTML = function(parent_id, html){

  var liNode = $("li#node-" + parent_id);

  if ( liNode.length > 0){
    liNode.append(html);
  }else{
    $("#tree-view").html(html);
  }
}

OrganizationStructureTreeView.fail = function(data){
  alert("Error Getting Data");
}


