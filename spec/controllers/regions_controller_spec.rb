require 'rails_helper'

RSpec.describe RegionsController, :type => :controller do

	valid_params = {
		name: (Faker::Name.name),
		latitude: (Faker::Number.digit),
		longitude: (Faker::Number.digit),
		zoom: (Faker::Number.digit)
	}

	invalid_params = {
		name: nil,
		latitude: nil,
		longitude: nil,
		zoom: nil
	}

	let(:valid_session) {{}}

	describe "GET index" do
    	it "assigns all regions as @regions" do
    		region = FactoryGirl.create(:region)
		    get :index, {}, valid_session
		    expect(assigns(:regions)).to eq([region]) #eq() checks data, equal() checks data and data type
    	end
  	end


  	describe "GET show" do
	    it "assigns the requested region as @region" do
		      region = FactoryGirl.create(:region)
		      get :show, {:id => region.to_param}, valid_session
		      expect(assigns(:region)).to eq(region)
	    end
  	end

	describe "GET new" do
	  it "assigns a new region as @region" do
	    get :new, {}, valid_session
	    expect(assigns(:region)).to be_a_new(Region)
	  end
	end


  describe "GET edit" do
    it "assigns the requested region as @region" do
      region = Region.create! valid_params
      get :edit, {:id => region.to_param}, valid_session
      expect(assigns(:region)).to eq(region)
    end
  end

describe "POST create" do
    describe "with valid params" do
      it "creates a new Region" do
        expect {
          post :create, {:region => valid_params}, valid_session
        }.to change(Region, :count).by(1)
      end

      it "assigns a newly created region as @region" do
        post :create, {:region => valid_params}, valid_session
        expect(assigns(:region)).to be_a(Region)
        expect(assigns(:region)).to be_persisted
      end

      it "redirects to the created region" do
        post :create, {:region => valid_params}, valid_session
        expect(response).to redirect_to(Region.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved region as @region" do
        post :create, {:region => invalid_params}, valid_session
        expect(assigns(:region)).to be_a_new(Region)
      end

      it "re-renders the 'new' template" do
        post :create, {:region => invalid_params}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      new_attributes = {
				name: (Faker::Name.name),
				latitude: (Faker::Number.digit),
				longitude: (Faker::Number.digit),
				zoom: (Faker::Number.digit)
			}

      it "updates the requested region" do
        region1 = Region.create! valid_params
        put :update, {:id => region1.to_param, :region => new_attributes}, valid_session
        region1.reload
		    expect(assigns(:region)).to eq(region1)
      end

      it "assigns the requested region as @region" do
        region = Region.create! valid_params
        put :update, {:id => region.to_param, :region => valid_params}, valid_session
        expect(assigns(:region)).to eq(region)
      end

      it "redirects to the region" do
        region = Region.create! valid_params
        put :update, {:id => region.to_param, :region => valid_params}, valid_session
        expect(response).to redirect_to(region)
      end
    end

    describe "with invalid params" do
      it "assigns the region as @region" do
        region = Region.create! valid_params
        put :update, {:id => region.to_param, :region => invalid_params}, valid_session
        expect(assigns(:region)).to eq(region)
      end

      it "re-renders the 'edit' template" do
        region = Region.create! valid_params
        put :update, {:id => region.to_param, :region => invalid_params}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested region" do
      region = Region.create! valid_params
      expect {
        delete :destroy, {:id => region.to_param}, valid_session
      }.to change(Region, :count).by(-1)
    end

    it "redirects to the regions list" do
      region = Region.create! valid_params
      delete :destroy, {:id => region.to_param}, valid_session
      expect(response).to redirect_to(regions_url)
    end
  end

end
