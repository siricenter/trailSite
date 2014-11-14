# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :territory do
    area_id {FactoryGirl.create(:area).id}
    name Faker::Name.name
    latitude Faker::Number.digit
    longitude Faker::Number.digit
    zoom 2
    history Faker::Lorem.paragraph
    description Faker::Lorem.paragraph
    directions Faker::Lorem.paragraph
  end
end
