# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :timesheet do
    for_date "2014-04-29"
    user nil
  end
end
