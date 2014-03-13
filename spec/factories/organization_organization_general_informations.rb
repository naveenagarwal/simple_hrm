# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :organization_organization_general_information, :class => 'Organization::OrganizationGeneralInformation' do
    name "MyString"
    tax_id 1
    number_of_employees 1
    registration_number "MyString"
    email "MyString"
  end
end
