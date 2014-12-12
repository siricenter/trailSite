require 'rails_helper'

RSpec.describe RegionsController, :type => :controller do


  before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  let(:valid_attributes) {
    FactoryGirl.attributes_for(:region)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:region, name:nil, latitude: nil, longitude: nil, zoom:nil, )
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RegionsController. Be sure to keep this updated too.
  let(:valid_session) { { username: "jimmy", user_type: 'admin', user_id: 1 } }

  # GET
  describe "GET" do

    before(:each) do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.start
      DatabaseCleaner.clean
    end

    context "index" do
      it "assigns all regions as @regions" do
        region = Region.create! valid_attributes
        get :index, {}, valid_session
        expect(assigns(:regions)).to eq([region])
      end
    end

    describe "show" do
      it "assigns the requested region as @region" do
        region = Region.create! valid_attributes
        get :show, {:id => region.to_param}, valid_session
        expect(assigns(:region)).to eq(region)
      end
    end

    describe "new" do
      it "assigns a new region as @region" do
        get :new, {}, valid_session
        expect(assigns(:region)).to be_a_new(Region)
      end
    end

    describe "edit" do
      it "assigns the requested region as @region" do
        region = Region.create! valid_attributes
        get :edit, {:id => region.to_param}, valid_session
        expect(assigns(:region)).to eq(region)
      end

    describe "json" do
      it "with no param returns a valid json object" do
        subject = FactoryGirl.create(:region, id:1)
        response = get(regions_data_getJson_path, {}, valid_session)
        expect(response.code).to eq('200')
        json = JSON.parse response.body
        expect(json.id).to_not be_nil;
      end
      it "returns a valid json object" do
        subject = FactoryGirl.create(:region, id:1)
        json = get(:getJson, {}, valid_session)
        expect(json).to_not be_nil;
      end
    end

    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Region" do
        expect {
          post :create, {:region => valid_attributes}, valid_session
        }.to change(Region, :count).by(1)
      end

      it "assigns a newly created region as @region" do
        post :create, {:region => valid_attributes}, valid_session
        expect(assigns(:region)).to be_a(Region)
        expect(assigns(:region)).to be_persisted
      end

      it "redirects to the created region" do
        post :create, {:region => valid_attributes}, valid_session
        expect(response).to redirect_to(Region.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved region as @region" do
        post :create, {:region => invalid_attributes}, valid_session
        expect(assigns(:region)).to be_a_new(Region)
      end

      it "re-renders the 'new' template" do
        post :create, {:region => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        FactoryGirl.attributes_for(:region, name:"It's Jimmy!")
      }

      it "updates the requested region" do
        region = Region.create! valid_attributes
        put :update, {:id => region.to_param, :region => new_attributes}, valid_session
        region.reload
        expect(region.name).to eq("It's Jimmy!")
      end

      it "assigns the requested region as @region" do
        region = Region.create! valid_attributes
        put :update, {:id => region.to_param, :region => valid_attributes}, valid_session
        expect(assigns(:region)).to eq(region)
      end

      it "redirects to the region" do
        region = Region.create! valid_attributes
        put :update, {:id => region.to_param, :region => valid_attributes}, valid_session
        expect(response).to redirect_to(region)
      end
    end

    describe "with invalid params" do
      it "assigns the region as @region" do
        region = Region.create! valid_attributes
        put :update, {:id => region.to_param, :region => invalid_attributes}, valid_session
        expect(assigns(:region)).to eq(region)
      end

      it "re-renders the 'edit' template" do
        region = Region.create! valid_attributes
        put :update, {:id => region.to_param, :region => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested region" do
      region = Region.create! valid_attributes
      expect {
        delete :destroy, {:id => region.to_param}, valid_session
      }.to change(Region, :count).by(-1)
    end

    it "redirects to the regions list" do
      region = Region.create! valid_attributes
      delete :destroy, {:id => region.to_param}, valid_session
      expect(response).to redirect_to(regions_url)
    end
  end

end
