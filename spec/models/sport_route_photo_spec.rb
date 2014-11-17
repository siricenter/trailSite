require 'rails_helper'

RSpec.describe SportRoutePhoto, :type => :model do
  it "has a valid factory" do
    subject = FactoryGirl.build(:sport_route_photo)
    expect(subject).to be_valid
  end

  it "is invalid without a sport_route" do
    subject = FactoryGirl.build(:sport_route_photo, sport_route: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without a title" do
    subject = FactoryGirl.build(:sport_route_photo, title: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without a url" do
    subject = FactoryGirl.build(:sport_route_photo, url: nil)
    expect(subject).to_not be_valid
  end
end
