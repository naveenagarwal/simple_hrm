# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :email_configuration do
    address "MyString"
    port 1
    domain "MyString"
    username "MyString"
    password "MyString"
    authentication_type 1
    enable_starttls_auto false
  end
end
