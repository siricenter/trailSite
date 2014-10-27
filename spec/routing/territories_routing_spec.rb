require "rails_helper"

RSpec.describe TerritoriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/territories").to route_to("territories#index")
    end

    it "routes to #new" do
      expect(:get => "/territories/new").to route_to("territories#new")
    end

    it "routes to #show" do
      expect(:get => "/territories/1").to route_to("territories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/territories/1/edit").to route_to("territories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/territories").to route_to("territories#create")
    end

    it "routes to #update" do
      expect(:put => "/territories/1").to route_to("territories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/territories/1").to route_to("territories#destroy", :id => "1")
    end

  end
end
