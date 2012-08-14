# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :partner do
    name "MyString"
    credit_limit "9.99"
    is_supplier false
    active false
    agent_id 1
    email "MyString"
    website "MyString"
    is_customer false
    search_key "MyString"
    registration_no "MyString"
  end
end
