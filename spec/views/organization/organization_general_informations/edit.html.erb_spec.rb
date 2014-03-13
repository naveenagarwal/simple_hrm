require 'spec_helper'

describe "organization/organization_general_informations/edit" do
  before(:each) do
    @organization_organization_general_information = assign(:organization_organization_general_information, stub_model(Organization::OrganizationGeneralInformation,
      :name => "MyString",
      :tax_id => 1,
      :number_of_employees => 1,
      :registration_number => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit organization_organization_general_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organization_organization_general_information_path(@organization_organization_general_information), "post" do
      assert_select "input#organization_organization_general_information_name[name=?]", "organization_organization_general_information[name]"
      assert_select "input#organization_organization_general_information_tax_id[name=?]", "organization_organization_general_information[tax_id]"
      assert_select "input#organization_organization_general_information_number_of_employees[name=?]", "organization_organization_general_information[number_of_employees]"
      assert_select "input#organization_organization_general_information_registration_number[name=?]", "organization_organization_general_information[registration_number]"
      assert_select "input#organization_organization_general_information_email[name=?]", "organization_organization_general_information[email]"
    end
  end
end
