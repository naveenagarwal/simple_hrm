# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ldap_configuration do
    server "MyString"
    port 1
    implementation 1
    protocol 1
    user_suffix "MyString"
    enable_authentication false
    status false
  end
end
