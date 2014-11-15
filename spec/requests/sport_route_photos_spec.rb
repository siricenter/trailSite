require 'rails_helper'

RSpec.describe "SportRoutePhotos", :type => :request do
  describe "GET /sport_route_photos" do
    it "works! (now write some real specs)" do
      get sport_route_photos_path
      expect(response.status).to be(200)
    end
  end
end
