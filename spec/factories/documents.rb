# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :document do
    file "MyString"
    file_content_type "MyString"
    file_size 1
    attachment nil
    creator nil
    description "MyText"
  end
end
