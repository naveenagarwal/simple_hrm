require 'spec_helper'

describe "organization/organization_structures/show" do
  before(:each) do
    @organization_organization_structure = assign(:organization_organization_structure, stub_model(Organization::OrganizationStructure,
      :unit_id => "Unit",
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Unit/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
