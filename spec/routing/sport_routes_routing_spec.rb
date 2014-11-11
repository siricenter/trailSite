require "rails_helper"

RSpec.describe SportRoutesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sport_routes").to route_to("sport_routes#index")
    end

    it "routes to #new" do
      expect(:get => "/sport_routes/new").to route_to("sport_routes#new")
    end

    it "routes to #show" do
      expect(:get => "/sport_routes/1").to route_to("sport_routes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sport_routes/1/edit").to route_to("sport_routes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sport_routes").to route_to("sport_routes#create")
    end

    it "routes to #update" do
      expect(:put => "/sport_routes/1").to route_to("sport_routes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sport_routes/1").to route_to("sport_routes#destroy", :id => "1")
    end

  end
end
