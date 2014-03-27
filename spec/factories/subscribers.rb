# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscriber, :class => 'Subscribers' do
    name "MyString"
    email "MyString"
    subscribeable nil
  end
end
