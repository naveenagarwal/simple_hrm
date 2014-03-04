# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pay_grade do
    name "MyString"
    currency 1
    min_salary 1
    max_salary 1
  end
end
