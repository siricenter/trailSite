# Read about factories at https://github.com/thoughtbot/factory_girl

require 'danger_rating'
require 'hueco_grade'

FactoryGirl.define do
  factory :boulder_route do
    wall_id {FactoryGirl.create(:wall).id}
    name Faker::Name.name
    latitude Faker::Number.digit
    longitude Faker::Number.digit
    zoom {1+rand(16)}
    description Faker::Lorem.paragraph
    directions Faker::Lorem.paragraph
    danger_rating {DangerRating.getRand()}
    stars {1 + rand(5)}
    pads {1 + rand(5)}
    hueco_grade {HuecoGrade.getRand()}
    length {1 + rand(5000)}
  end
end