# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :manage_document do
    topic "MyString"
    description "MyText"
    published_at "2014-03-26 11:02:39"
    document_category nil
  end
end
