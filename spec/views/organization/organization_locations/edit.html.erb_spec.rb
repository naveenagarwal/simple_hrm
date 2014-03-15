require 'spec_helper'

describe "organization/organization_locations/edit" do
  before(:each) do
    @organization_organization_location = assign(:organization_organization_location, stub_model(Organization::OrganizationLocation,
      :name => "MyString",
      :number_of_employees => 1
    ))
  end

  it "renders the edit organization_organization_location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organization_organization_location_path(@organization_organization_location), "post" do
      assert_select "input#organization_organization_location_name[name=?]", "organization_organization_location[name]"
      assert_select "input#organization_organization_location_number_of_employees[name=?]", "organization_organization_location[number_of_employees]"
    end
  end
end
