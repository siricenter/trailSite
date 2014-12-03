require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
    it "as an admin redirects to admin dashboard" do
      user = FactoryGirl.build(:user, user_type: 'admin')
      password = user.password
      username = user.username
      user.save!
      post :create, { username: username, password: password }
      expect(response).to redirect_to '/admin'
    end

    it "as an manager redirects to admin dashboard" do
      user = FactoryGirl.build(:user, user_type: 'manager')
      password = user.password
      username = user.username
      user.save!
      post :create, { username: username, password: password }
      expect(response).to redirect_to '/admin'
    end

    it "as an defualt redirects to home page" do
      user = FactoryGirl.build(:user, user_type: 'defualt')
      password = user.password
      username = user.username
      user.save!
      post :create, { username: username, password: password }
      expect(response).to redirect_to '/home'
    end
  end

  describe "DELETE destroy" do
    it "returns http success and redirects to home" do
      delete :destroy
      expect(response).to redirect_to '/home'
    end
  end

end
