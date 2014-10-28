require 'rails_helper'

RSpec.describe "Crags", :type => :request do
  describe "GET /crags" do
    it "works! (now write some real specs)" do
      get crags_path
      expect(response.status).to be(200)
    end
  end
end
