# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :notification do
    event_name "MyString"
    employee_name "MyText"
    event_id 1
    notified_before 1
  end
end
