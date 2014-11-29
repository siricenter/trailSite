require 'rails_helper'

RSpec.describe User, :type => :model do
  context ".types" do
    it "is read accessable" do
      expect(User.types[0]).to eq("admin")
    end
    it "is not write accessable" do
      User.types[0] = Faker::Name.name
      expect(User.types[0]).to eq("admin")
    end
  end

  it "has a valid factory" do
    subject = FactoryGirl.build(:user)
    expect(subject).to_not be_nil
    expect(subject).to be_valid
  end

  it "is invalid without username" do
    subject = FactoryGirl.build(:user, username: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without password" do
    subject = FactoryGirl.build(:user, password: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without salt" do
    subject = FactoryGirl.build(:user, salt: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without first name" do
    subject = FactoryGirl.build(:user, first_name: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid without last name" do
    subject = FactoryGirl.build(:user, last_name: nil)
    expect(subject).to_not be_valid
  end

  context "email" do
    it "is invalid when blank" do
      subject = FactoryGirl.build(:user, email: nil)
    expect(subject).to_not be_valid
    end

    it "is invalid without @host.com at the end" do
      subject = FactoryGirl.build(:user, email: Faker::Name.first_name)
      expect(subject).to_not be_valid
    end
  end

  it "is invalid without a valid user_type" do
    subject = FactoryGirl.build(:user, user_type: Faker::Name.name)
    expect(subject).to_not be_valid
  end

  it "without user type will set user tpye to default" do
    subject = FactoryGirl.build(:user, user_type: nil)
    subject.save!
    expect(subject.user_type).to eq("defualt")
  end

end
