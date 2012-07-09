# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :carton_box do
    length "9.99"
    width "9.99"
    height "9.99"
    box_style nil
    material_code nil
    customer_length "9.99"
    customer_width "9.99"
    customer_height "9.99"
  end
end
