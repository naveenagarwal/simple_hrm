# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :timesheet_entry do
    project nil
    timesheet nil
    time_spent 1
    project_task nil
    description "MyText"
  end
end
