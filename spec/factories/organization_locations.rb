# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :organization_location do
    name "MyString"
    number_of_employees 1
  end
end
