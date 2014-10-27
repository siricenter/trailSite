# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :area do
    state {FactoryGirl.create(:state)}
    name Faker::Name.name
    latitude Faker::Number.digit
    longitude Faker::Number.digit
    zoom Faker::Number.digit
    history Faker::Lorem.paragraph
  end
end
