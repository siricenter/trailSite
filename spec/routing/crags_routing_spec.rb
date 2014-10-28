require "rails_helper"

RSpec.describe CragsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/crags").to route_to("crags#index")
    end

    it "routes to #new" do
      expect(:get => "/crags/new").to route_to("crags#new")
    end

    it "routes to #show" do
      expect(:get => "/crags/1").to route_to("crags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/crags/1/edit").to route_to("crags#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/crags").to route_to("crags#create")
    end

    it "routes to #update" do
      expect(:put => "/crags/1").to route_to("crags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/crags/1").to route_to("crags#destroy", :id => "1")
    end

  end
end
