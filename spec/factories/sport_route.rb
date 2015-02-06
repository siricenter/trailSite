# Read about factories at https://github.com/thoughtbot/factory_girl
require 'danger_rating'
require 'anchor_type'

FactoryGirl.define do
  factory :sport_route do
    wall_id {FactoryGirl.create(:wall).id}
    name Faker::Name.name
    latitude Faker::Number.digit
    longitude Faker::Number.digit
    zoom {1+rand(16)}
    description Faker::Lorem.paragraph
    directions Faker::Lorem.paragraph
    danger_rating {DangerRating.getRand()}
    bolts {1 + rand(5)}
    stars {1 + rand(5)}
    pitches {1 + rand(5)}
    anchor {AnchorType.getRand()}
    length {1 + rand(5000)}
  end
end