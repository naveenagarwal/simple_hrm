require 'spec_helper'

describe "organization/organization_general_informations/index" do
  before(:each) do
    assign(:organization_organization_general_informations, [
      stub_model(Organization::OrganizationGeneralInformation,
        :name => "Name",
        :tax_id => 1,
        :number_of_employees => 2,
        :registration_number => "Registration Number",
        :email => "Email"
      ),
      stub_model(Organization::OrganizationGeneralInformation,
        :name => "Name",
        :tax_id => 1,
        :number_of_employees => 2,
        :registration_number => "Registration Number",
        :email => "Email"
      )
    ])
  end

  it "renders a list of organization/organization_general_informations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Registration Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
