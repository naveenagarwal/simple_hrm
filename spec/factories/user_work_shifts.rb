# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_work_shift do
    user { User.first || create(:user) }
    work_shift { WorkShift.first || create(:work_shift) }
  end
end
