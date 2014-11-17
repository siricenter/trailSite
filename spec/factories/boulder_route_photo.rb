FactoryGirl.define do
  factory :boulder_route_photo do
    title Faker::Name.title
    boulder_route_id { FactoryGirl.create(:boulder_route).id }
    url Faker::Internet.url
  end
end