# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :leave_period do
    start_month 1
    start_date 1
    active false
  end
end
