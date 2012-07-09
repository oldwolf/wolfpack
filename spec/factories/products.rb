# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    type ""
    stocked false
    sale false
    purchase false
  end
end
