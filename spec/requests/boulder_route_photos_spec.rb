require 'rails_helper'

RSpec.describe "BoulderRoutePhotos", :type => :request do
  describe "GET /boulder_route_photos" do
    it "works! (now write some real specs)" do
      get boulder_route_photos_path
      expect(response.status).to be(200)
    end
  end
end
