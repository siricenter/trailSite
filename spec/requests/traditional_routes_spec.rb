require 'rails_helper'

RSpec.describe "TraditionalRoutes", :type => :request do
  describe "GET /traditional_routes" do
    it "works! (now write some real specs)" do
      get traditional_routes_path
      expect(response.status).to be(200)
    end
  end
end
