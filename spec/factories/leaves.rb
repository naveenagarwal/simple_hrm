# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :leafe, :class => 'Leave' do
    user nil
    leave_type nil
    from "2014-04-24"
    to "2014-04-24"
    comment "MyText"
    status 1
  end
end
