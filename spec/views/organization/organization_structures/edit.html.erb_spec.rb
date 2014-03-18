require 'spec_helper'

describe "organization/organization_structures/edit" do
  before(:each) do
    @organization_organization_structure = assign(:organization_organization_structure, stub_model(Organization::OrganizationStructure,
      :unit_id => "MyString",
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit organization_organization_structure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organization_organization_structure_path(@organization_organization_structure), "post" do
      assert_select "input#organization_organization_structure_unit_id[name=?]", "organization_organization_structure[unit_id]"
      assert_select "input#organization_organization_structure_name[name=?]", "organization_organization_structure[name]"
      assert_select "input#organization_organization_structure_description[name=?]", "organization_organization_structure[description]"
    end
  end
end
