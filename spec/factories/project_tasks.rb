# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_task do
    name "MyString"
    project nil
  end
end
