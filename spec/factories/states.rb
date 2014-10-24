# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :state do
    region nil
    name "MyString"
    latitude "9.99"
    longitude "9.99"
    zoom 1
    history "MyText"
  end
end
