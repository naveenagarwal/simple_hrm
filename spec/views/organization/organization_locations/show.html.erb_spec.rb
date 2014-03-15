require 'spec_helper'

describe "organization/organization_locations/show" do
  before(:each) do
    @organization_organization_location = assign(:organization_organization_location, stub_model(Organization::OrganizationLocation,
      :name => "Name",
      :number_of_employees => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
