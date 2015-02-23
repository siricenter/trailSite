require 'rails_helper'

RSpec.describe "TraditionalRouteVideos", :type => :request do
  describe "GET /traditional_route_videos" do
    it "works! (now write some real specs)" do
      get traditional_route_videos_path
      expect(response).to have_http_status(200)
    end
  end
end
