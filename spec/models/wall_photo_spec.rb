require 'rails_helper'

RSpec.describe WallPhoto, :type => :model do
  it "has a valid factory" do
    subject = FactoryGirl.build(:wall_photo)
    expect(subject).to be_valid
  end

  it "is invalid without a traditional_route" do
    subject = FactoryGirl.build(:wall_photo, wall: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without a title" do
    subject = FactoryGirl.build(:wall_photo, title: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without a url" do
    subject = FactoryGirl.build(:wall_photo, url: nil)
    expect(subject).to_not be_valid
  end
end
 