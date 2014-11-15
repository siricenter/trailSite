require "rails_helper"

RSpec.describe TraditionalRoutePhotosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/traditional_route_photos").to route_to("traditional_route_photos#index")
    end

    it "routes to #new" do
      expect(:get => "/traditional_route_photos/new").to route_to("traditional_route_photos#new")
    end

    it "routes to #show" do
      expect(:get => "/traditional_route_photos/1").to route_to("traditional_route_photos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/traditional_route_photos/1/edit").to route_to("traditional_route_photos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/traditional_route_photos").to route_to("traditional_route_photos#create")
    end

    it "routes to #update" do
      expect(:put => "/traditional_route_photos/1").to route_to("traditional_route_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/traditional_route_photos/1").to route_to("traditional_route_photos#destroy", :id => "1")
    end

  end
end
