# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :area do
    state_id {FactoryGirl.create(:state).id}
    name Faker::Name.name
    latitude Faker::Number.digit
    longitude Faker::Number.digit
    zoom 6
    history Faker::Lorem.paragraph
    description Faker::Lorem.paragraph
  end
end
