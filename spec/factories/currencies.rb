# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :currency do
    code "MyString"
    name "MyString"
    rounding "9.99"
    active false
    accuracy 1
  end
end
