# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :leave_entitlement do
    user_id 1
    leave_type_id 1
    from "2014-04-09"
    to "2014-04-09"
    location_id 1
  end
end
