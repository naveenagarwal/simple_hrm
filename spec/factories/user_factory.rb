# This will guess the User class
FactoryGirl.define do

  factory :user do
    email "testuser@example.com"
    password              { "password" }
    password_confirmation { "password" }
    role                  { Role.first || create(:role) }
  end

  factory :user1, class: User do
    email "testuser1@example.com"
    password              { "password" }
    password_confirmation { "password" }
    role                  { Role.first || create(:role) }
  end

end
