FactoryGirl.define do
  factory :traditional_route_photo do
    title Faker::Name.title
    traditional_route_id { FactoryGirl.create(:traditional_route).id }
    url Faker::Internet.url
  end
end