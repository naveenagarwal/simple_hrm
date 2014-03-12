# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    address "MyText"
    city "MyString"
    state "MyString"
    zip "MyString"
    country "MyString"
    phone "MyString"
    fax "MyString"
    notes "MyText"
  end
end
