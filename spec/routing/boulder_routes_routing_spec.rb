require "rails_helper"

RSpec.describe BoulderRoutesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/boulder_routes").to route_to("boulder_routes#index")
    end

    it "routes to #new" do
      expect(:get => "/boulder_routes/new").to route_to("boulder_routes#new")
    end

    it "routes to #show" do
      expect(:get => "/boulder_routes/1").to route_to("boulder_routes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/boulder_routes/1/edit").to route_to("boulder_routes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/boulder_routes").to route_to("boulder_routes#create")
    end

    it "routes to #update" do
      expect(:put => "/boulder_routes/1").to route_to("boulder_routes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/boulder_routes/1").to route_to("boulder_routes#destroy", :id => "1")
    end

  end
end
