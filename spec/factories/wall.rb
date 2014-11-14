# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wall do
    crag_id {FactoryGirl.create(:crag).id}
    name Faker::Name.name
    latitude Faker::Number.digit
    longitude Faker::Number.digit
    zoom 3
    history Faker::Lorem.paragraph
    description Faker::Lorem.paragraph
    directions Faker::Lorem.paragraph
  end
end
