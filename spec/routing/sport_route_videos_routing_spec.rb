require "rails_helper"

RSpec.describe SportRouteVideosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sport_route_videos").to route_to("sport_route_videos#index")
    end

    it "routes to #new" do
      expect(:get => "/sport_route_videos/new").to route_to("sport_route_videos#new")
    end

    it "routes to #show" do
      expect(:get => "/sport_route_videos/1").to route_to("sport_route_videos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sport_route_videos/1/edit").to route_to("sport_route_videos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sport_route_videos").to route_to("sport_route_videos#create")
    end

    it "routes to #update" do
      expect(:put => "/sport_route_videos/1").to route_to("sport_route_videos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sport_route_videos/1").to route_to("sport_route_videos#destroy", :id => "1")
    end

  end
end
