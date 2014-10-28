# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :crag do
    territory {FactoryGirl.create(:territory)}
    name Faker::Name.name
    latitude Faker::Number.digit
    longitude Faker::Number.digit
    zoom Faker::Number.digit
    history Faker::Lorem.paragraph
    description Faker::Lorem.paragraph
    directions Faker::Lorem.paragraph
  end
end
