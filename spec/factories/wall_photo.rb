FactoryGirl.define do
  factory :wall_photo do
    title Faker::Name.title
    wall_id { FactoryGirl.create(:wall).id }
    url Faker::Internet.url
  end
end