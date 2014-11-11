# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :state do
    region {FactoryGirl.create(:region)}
    name Faker::Name.name
    latitude Faker::Number.digit
    longitude Faker::Number.digit
    zoom 1
    history Faker::Lorem.paragraph
    description Faker::Lorem.paragraph
  end
end
