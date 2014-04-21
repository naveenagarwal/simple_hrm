# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :holiday do
    name "MyString"
    on "2014-04-21"
    repeat_annually false
    period 1
    country "MyString"
  end
end
