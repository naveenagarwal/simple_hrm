# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job_job_title, :class => 'Job::JobTitle' do
    name "MyString"
    description "MyText"
    specification "MyString"
    note "MyText"
  end
end
