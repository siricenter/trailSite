FactoryGirl.define do
  factory :sport_route_photo do
    title Faker::Name.title
    sport_route_id { FactoryGirl.create(:sport_route).id }
    url Faker::Internet.url
  end
end