# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name "MyString"
    manufacturing_lead "9.99"
    email "MyString"
    website "MyString"
    registration_no "MyString"
    currency nil
  end
end
