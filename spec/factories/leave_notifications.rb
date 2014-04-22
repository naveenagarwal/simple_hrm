# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :leave_notification do
    name "MyString"
    send_on "2014-04-22"
    for_days 1
    mail_subject "MyString"
  end
end
