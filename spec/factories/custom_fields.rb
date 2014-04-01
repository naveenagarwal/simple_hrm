# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :custom_field do
    name "MyString"
    screen 1
    field_type 1
    custom_fieldable nil
  end
end
