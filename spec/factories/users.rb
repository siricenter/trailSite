FactoryGirl.define do
  factory :user do
    username Faker::Internet.user_name
    password Faker::Internet.password
    salt "MyString"
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    user_type {User.types[rand(3)]}
  end

end
