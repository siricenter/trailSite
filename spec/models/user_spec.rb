require 'rails_helper'

RSpec.describe User, :type => :model do

  before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  before(:each) do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.start
      DatabaseCleaner.clean
  end

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

  it "only allows unique usernames" do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.build(:user, username: user1.username)
    expect(user2).to_not be_valid
  end

  it "is invalid without password" do
    subject = FactoryGirl.build(:user, password: nil)
    expect(subject).to_not be_valid
  end

  it "is invalid with an unsecure password" do
    
  end

  it ".salt is generated on save" do
    subject = FactoryGirl.build(:user)
    subject.save!
    expect(subject.salt).to_not be_nil
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

  it "is allows you to specify a valid user_type" do
    type = User.types[rand(3)]
    subject = FactoryGirl.build(:user, user_type: type)
    expect(subject.user_type).to eq(type)
  end

  it "without user type will set user tpye to default" do
    subject = FactoryGirl.build(:user, user_type: nil)
    subject.save!
    expect(subject.user_type).to eq("defualt")
  end

  context ".authenticate" do
    it "with valid username and password is not nil" do
      password = Faker::Internet.password
      subject = FactoryGirl.create(:user, password: password)
      expect(User.authenticate(subject.username, password)).to_not be_nil
    end
    it "with invalid username is nil" do
      subject = FactoryGirl.build(:user)
      subject.save!
      expect(User.authenticate(Faker::Name.name, subject.password)).to be_nil
    end
    it "with invalid password is nil" do
      subject = FactoryGirl.build(:user)
      subject.save!
      expect(User.authenticate(subject.username, Faker::Name.name)).to be_nil
    end
    it "with no username is nil" do
      subject = FactoryGirl.build(:user)
      subject.save!
      expect(User.authenticate(nil, subject.password)).to be_nil
    end
    it "with no password is nil" do
      subject = FactoryGirl.build(:user)
      subject.save!
      expect(User.authenticate(subject.username, nil)).to be_nil
    end
  end

end
