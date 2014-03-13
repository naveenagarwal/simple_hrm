require 'spec_helper'

describe "organization/organization_general_informations/show" do
  before(:each) do
    @organization_organization_general_information = assign(:organization_organization_general_information, stub_model(Organization::OrganizationGeneralInformation,
      :name => "Name",
      :tax_id => 1,
      :number_of_employees => 2,
      :registration_number => "Registration Number",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Registration Number/)
    rendered.should match(/Email/)
  end
end
