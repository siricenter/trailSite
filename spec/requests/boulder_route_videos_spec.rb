require 'rails_helper'

RSpec.describe "BoulderRouteVideos", :type => :request do
  describe "GET /boulder_route_videos" do
    it "works! (now write some real specs)" do
      get boulder_route_videos_path
      expect(response).to have_http_status(200)
    end
  end
end
