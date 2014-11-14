require 'rails_helper'

RSpec.describe "BoulderRoutes", :type => :request do
  describe "GET /boulder_routes" do
    it "works! (now write some real specs)" do
      get boulder_routes_path
      expect(response.status).to be(200)
    end
  end
end
