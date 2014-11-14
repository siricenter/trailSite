# Read about factories at https://github.com/thoughtbot/factory_girl
require 'yds_grade'
require 'danger_rating'
require 'anchor_type'

FactoryGirl.define do
  factory :sport_route do
    wall {FactoryGirl.create(:wall)}
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
    yds_grade {YdsGrade.getRand()}
    anchor {AnchorType.getRand()}
  end
end