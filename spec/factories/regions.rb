
FactoryGirl.define do
	factory :region do
		name Faker::Name.name
		latitude Faker::Number.digit
		longitude Faker::Number.digit
		zoom 4
		history Faker::Lorem.paragraph
		description Faker::Lorem.paragraph
	end
end