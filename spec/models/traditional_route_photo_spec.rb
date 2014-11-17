require 'rails_helper'

RSpec.describe TraditionalRoutePhoto, :type => :model do
  it "has a valid factory" do
    subject = FactoryGirl.build(:traditional_route_photo)
    expect(subject).to be_valid
  end

  it "is invalid without a traditional_route" do
    subject = FactoryGirl.build(:traditional_route_photo, traditional_route: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without a title" do
    subject = FactoryGirl.build(:traditional_route_photo, title: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without a url" do
    subject = FactoryGirl.build(:traditional_route_photo, url: nil)
    expect(subject).to_not be_valid
  end
end
