require 'rails_helper'

RSpec.describe "SportRoutes", :type => :request do
  describe "GET /sport_routes" do
    it "works! (now write some real specs)" do
      get sport_routes_path
      expect(response.status).to be(200)
    end
  end
end
