require 'rails_helper'

RSpec.describe "SportRouteVideos", :type => :request do
  describe "GET /sport_route_videos" do
    it "works! (now write some real specs)" do
      get sport_route_videos_path
      expect(response).to have_http_status(200)
    end
  end
end
