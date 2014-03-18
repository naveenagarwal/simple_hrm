require 'spec_helper'

describe "organization/organization_structures/index" do
  before(:each) do
    assign(:organization_organization_structures, [
      stub_model(Organization::OrganizationStructure,
        :unit_id => "Unit",
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Organization::OrganizationStructure,
        :unit_id => "Unit",
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of organization/organization_structures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
