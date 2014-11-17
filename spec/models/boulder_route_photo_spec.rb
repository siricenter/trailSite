require 'rails_helper'

# validates :title, :url, :boulder_route, presence:true

RSpec.describe BoulderRoutePhoto, :type => :model do
  it "has a valid factory" do
    subject = FactoryGirl.build(:boulder_route_photo)
    expect(subject).to be_valid
  end

  it "is invalid without a boulder_route" do
    subject = FactoryGirl.build(:boulder_route_photo, boulder_route: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without a title" do
    subject = FactoryGirl.build(:boulder_route_photo, title: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without a url" do
    subject = FactoryGirl.build(:boulder_route_photo, url: nil)
    expect(subject).to_not be_valid
  end

end
