require "rails_helper"

RSpec.describe WallPhotosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wall_photos").to route_to("wall_photos#index")
    end

    it "routes to #new" do
      expect(:get => "/wall_photos/new").to route_to("wall_photos#new")
    end

    it "routes to #addPhoto" do
      expect(:get => "/walls/addPhoto/1").to route_to("wall_photos#addPhoto", id: "1")
    end

    it "routes to #show" do
      expect(:get => "/wall_photos/1").to route_to("wall_photos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wall_photos/1/edit").to route_to("wall_photos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wall_photos").to route_to("wall_photos#create")
    end

    it "routes to #update" do
      expect(:put => "/wall_photos/1").to route_to("wall_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wall_photos/1").to route_to("wall_photos#destroy", :id => "1")
    end

  end
end
