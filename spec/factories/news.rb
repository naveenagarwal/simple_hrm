# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :news do
    topic "MyString"
    description "MyText"
    published_at "2014-03-24 14:59:02"
  end
end
