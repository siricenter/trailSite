require "rails_helper"

RSpec.describe TraditionalRoutesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/traditional_routes").to route_to("traditional_routes#index")
    end

    it "routes to #new" do
      expect(:get => "/traditional_routes/new").to route_to("traditional_routes#new")
    end

    it "routes to #show" do
      expect(:get => "/traditional_routes/1").to route_to("traditional_routes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/traditional_routes/1/edit").to route_to("traditional_routes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/traditional_routes").to route_to("traditional_routes#create")
    end

    it "routes to #update" do
      expect(:put => "/traditional_routes/1").to route_to("traditional_routes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/traditional_routes/1").to route_to("traditional_routes#destroy", :id => "1")
    end

  end
end
