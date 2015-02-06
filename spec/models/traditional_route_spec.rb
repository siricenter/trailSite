require 'rails_helper'

RSpec.describe TraditionalRoute, :type => :model do
  
  it "has a valid factory" do
  	subject = FactoryGirl.build(:traditional_route)
  	expect(subject).to be_valid
  end

  # region reference test #
  it "is invalid without a wall" do
  	subject = FactoryGirl.build(:traditional_route, wall: nil)
  	expect(subject).to_not be_valid
  end

  # name tests #
  it "is invalid without name" do
  	subject = FactoryGirl.build(:traditional_route, name: nil)
  	expect(subject).to_not be_valid
  end

  # zoom tests #
  it "is invalid with zoom less than 0" do
  	subject = FactoryGirl.build(:traditional_route, zoom: -1)
  	expect(subject).to_not be_valid
  end

  it "is invalid with zoom greater than 16" do
  	subject = FactoryGirl.build(:traditional_route, zoom: 17)
  	expect(subject).to_not be_valid
  end

  it "is valid with zoom of nil" do
    subject = FactoryGirl.build(:traditional_route, zoom: nil)
    expect(subject).to be_valid
  end

  # latitude tests #
  it "is invalid with latitude less than -90" do
  	subject = FactoryGirl.build(:traditional_route, latitude: -91)
  	expect(subject).to_not be_valid
  end

  it "is invalid with latitude greater than 90" do
  	subject = FactoryGirl.build(:traditional_route, latitude: 91)
  	expect(subject).to_not be_valid
  end

  it "is valid with latitude of nil" do
    subject = FactoryGirl.build(:traditional_route, latitude: nil)
    expect(subject).to be_valid
  end

  # longitude tests #
  it "is invalid with longitude less than -180" do
  	subject = FactoryGirl.build(:traditional_route, longitude: -181)
  	expect(subject).to_not be_valid
  end

  it "is invalid with longitude greater than 180" do
  	subject = FactoryGirl.build(:traditional_route, longitude: 181)
  	expect(subject).to_not be_valid
  end

  it "is valid with longitude of nil" do
    subject = FactoryGirl.build(:traditional_route, longitude: nil)
    expect(subject).to be_valid
  end
  
  #danger rating
  it "is invalid without danger rating" do
  	subject = FactoryGirl.build(:traditional_route, danger_rating: nil)
  	expect(subject).to_not be_valid
  end

  it "is invalid without valid danger rating" do
    subject = FactoryGirl.build(:traditional_route, danger_rating: Faker::Name.name)
    expect(subject).to_not be_valid
  end

  # stars
  it "is invalid without stars" do
  	subject = FactoryGirl.build(:traditional_route, stars: nil)
  	expect(subject).to_not be_valid
  end

  it "is invalid without valid number of stars (6)" do
    subject = FactoryGirl.build(:traditional_route, stars: 6)
    expect(subject).to_not be_valid
  end

  it "is invalid without valid number of stars (-1)" do
    subject = FactoryGirl.build(:traditional_route, stars: -1)
    expect(subject).to_not be_valid
  end
  
  # pitches
  it "is invalid without pitches" do
    subject = FactoryGirl.build(:traditional_route, pitches: nil)
    expect(subject).to_not be_valid
  end
  
  # 
  it "is invalid without " do
    subject = FactoryGirl.build(:traditional_route, : nil)
    expect(subject).to_not be_valid
  end
  
  it "is invalid without valid " do
    subject = FactoryGirl.build(:traditional_route, : Faker::Name.name)
    expect(subject).to_not be_valid
  end

  # anchor
  it "is invalid without anchor" do
    subject = FactoryGirl.build(:traditional_route, anchor: nil)
    expect(subject).to_not be_valid
  end
end
