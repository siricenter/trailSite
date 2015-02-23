require "rails_helper"

RSpec.describe TraditionalRouteVideosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/traditional_route_videos").to route_to("traditional_route_videos#index")
    end

    it "routes to #new" do
      expect(:get => "/traditional_route_videos/new").to route_to("traditional_route_videos#new")
    end

    it "routes to #show" do
      expect(:get => "/traditional_route_videos/1").to route_to("traditional_route_videos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/traditional_route_videos/1/edit").to route_to("traditional_route_videos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/traditional_route_videos").to route_to("traditional_route_videos#create")
    end

    it "routes to #update" do
      expect(:put => "/traditional_route_videos/1").to route_to("traditional_route_videos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/traditional_route_videos/1").to route_to("traditional_route_videos#destroy", :id => "1")
    end

  end
end
