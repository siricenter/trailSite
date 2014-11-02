require 'rails_helper'

RSpec.describe Wall, :type => :model do
  it "has a valid factory" do
  	subject = FactoryGirl.build(:wall)
  	expect(subject).to be_valid
  end

  # region reference test #
  it "is invalid without a crag" do
  	subject = FactoryGirl.build(:wall, crag: nil)
  	expect(subject).to_not be_valid
  end

  # name tests #
  it "is invalid without name" do
  	subject = FactoryGirl.build(:wall, name: nil)
  	expect(subject).to_not be_valid
  end

  # zoom tests #
  it "is invalid with zoom less than 0" do
  	subject = FactoryGirl.build(:wall, zoom: -1)
  	expect(subject).to_not be_valid
  end

  it "is invalid with zoom greater than 16" do
  	subject = FactoryGirl.build(:wall, zoom: 17)
  	expect(subject).to_not be_valid
  end

  # latitude tests #
  it "is invalid with latitude less than -90" do
  	subject = FactoryGirl.build(:wall, latitude: -91)
  	expect(subject).to_not be_valid
  end

  it "is invalid with latitude greater than 90" do
  	subject = FactoryGirl.build(:wall, latitude: 91)
  	expect(subject).to_not be_valid
  end

  # longitude tests #
  it "is invalid with longitude less than -180" do
  	subject = FactoryGirl.build(:wall, longitude: -181)
  	expect(subject).to_not be_valid
  end

  it "is invalid with longitude greater than 180" do
  	subject = FactoryGirl.build(:wall, longitude: 181)
  	expect(subject).to_not be_valid
  end
end
