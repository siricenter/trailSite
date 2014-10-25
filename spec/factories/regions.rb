
FactoryGirl.define do
	factory :region do
		name Faker::Name.name
		latitude Faker::Number.digit
		longitude Faker::Number.digit
		zoom Faker::Number.digit
		history Faker::Lorem.paragraph
	end
end