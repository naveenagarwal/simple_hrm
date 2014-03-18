# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :organization_structure do
    unit_id "MyString"
    name "MyString"
    description "MyString"
    node_id 1
    parent_id 1
  end
end
