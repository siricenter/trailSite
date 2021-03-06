require 'rails_helper'

RSpec.describe BoulderRoute, :type => :model do

  it "has a valid factory" do
  	subject = FactoryGirl.build(:boulder_route)
  	expect(subject).to be_valid
  end

  # region reference test #
  it "is invalid without a wall" do
  	subject = FactoryGirl.build(:boulder_route, wall: nil)
  	expect(subject).to_not be_valid
  end

  # name tests #
  it "is invalid without name" do
  	subject = FactoryGirl.build(:boulder_route, name: nil)
  	expect(subject).to_not be_valid
  end

  # zoom tests #
  it "is invalid with zoom less than 0" do
  	subject = FactoryGirl.build(:boulder_route, zoom: -1)
  	expect(subject).to_not be_valid
  end

  it "is invalid with zoom greater than 16" do
  	subject = FactoryGirl.build(:boulder_route, zoom: 17)
  	expect(subject).to_not be_valid
  end

  it "is valid with zoom of nil" do
    subject = FactoryGirl.build(:boulder_route, zoom: nil)
    expect(subject).to be_valid
  end

  # latitude tests #
  it "is invalid with latitude less than -90" do
  	subject = FactoryGirl.build(:boulder_route, latitude: -91)
  	expect(subject).to_not be_valid
  end

  it "is invalid with latitude greater than 90" do
  	subject = FactoryGirl.build(:boulder_route, latitude: 91)
  	expect(subject).to_not be_valid
  end

  it "is valid with latitude of nil" do
    subject = FactoryGirl.build(:boulder_route, latitude: nil)
    expect(subject).to be_valid
  end

  # longitude tests #
  it "is invalid with longitude less than -180" do
  	subject = FactoryGirl.build(:boulder_route, longitude: -181)
  	expect(subject).to_not be_valid
  end

  it "is invalid with longitude greater than 180" do
  	subject = FactoryGirl.build(:boulder_route, longitude: 181)
  	expect(subject).to_not be_valid
  end

  it "is valid with longitude of nil" do
    subject = FactoryGirl.build(:boulder_route, longitude: nil)
    expect(subject).to be_valid
  end
  
  #danger rating
  it "is invalid without danger rating" do
  	subject = FactoryGirl.build(:boulder_route, danger_rating: nil)
  	expect(subject).to_not be_valid
  end

  it "is invalid without valid danger rating" do
    subject = FactoryGirl.build(:boulder_route, danger_rating: Faker::Name.name)
    expect(subject).to_not be_valid
  end

  # stars
  it "is invalid without stars" do
  	subject = FactoryGirl.build(:boulder_route, stars: nil)
  	expect(subject).to_not be_valid
  end

  it "is invalid without valid number of stars (6)" do
    subject = FactoryGirl.build(:boulder_route, stars: 6)
    expect(subject).to_not be_valid
  end

  it "is invalid without valid number of stars (-1)" do
    subject = FactoryGirl.build(:boulder_route, stars: -1)
    expect(subject).to_not be_valid
  end
  
  # pitches
  it "is invalid without pads" do
    subject = FactoryGirl.build(:boulder_route, pads: nil)
    expect(subject).to_not be_valid
  end
  
  # 
  it "is invalid without hueco_grade" do
    subject = FactoryGirl.build(:boulder_route, hueco_grade: nil)
    expect(subject).to_not be_valid
  end
  
  it "is invalid without valid hueco_grade" do
    subject = FactoryGirl.build(:boulder_route, hueco_grade: Faker::Name.name)
    expect(subject).to_not be_valid
  end

end
