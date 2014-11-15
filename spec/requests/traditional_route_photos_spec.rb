require 'rails_helper'

RSpec.describe "TraditionalRoutePhotos", :type => :request do
  describe "GET /traditional_route_photos" do
    it "works! (now write some real specs)" do
      get traditional_route_photos_path
      expect(response.status).to be(200)
    end
  end
end
