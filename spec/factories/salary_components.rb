# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :salary_component do
    name "Basic"
    component_type 1
    only_ctc false
    value_type 1
  end
end
