# This will guess the User class
FactoryGirl.define do

  factory :user do
    email "testuser@example.com"
    password              { "password" }
    password_confirmation { "password" }
    role                  { create(:role) }
  end

end