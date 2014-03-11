# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :work_shift do
    name "Half Day"
    from "2014-03-10 9:00:00"
    to "2014-03-10 14:30:00"
  end
end
