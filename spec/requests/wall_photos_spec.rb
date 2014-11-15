require 'rails_helper'

RSpec.describe "WallPhotos", :type => :request do
  describe "GET /wall_photos" do
    it "works! (now write some real specs)" do
      get wall_photos_path
      expect(response.status).to be(200)
    end
  end
end
