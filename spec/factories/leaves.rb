# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :leave, :class => 'Leave' do
    user { User.first || create(:user) }
    leave_type_id 1
    from 2.days.from_now
    to 5.days.from_now
    comment "This is test leave"
    status 1
  end
end
