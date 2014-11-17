require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe BoulderRoutePhotosController, :type => :controller do


  before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  let(:valid_attributes) {
    FactoryGirl.attributes_for(:boulder_route_photo)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:boulder_route_photo, title:nil, url:nil, boudler_id:nil )
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BoulderRoutePhotosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  # GET
  describe "GET" do

    before(:each) do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.start
      DatabaseCleaner.clean
    end

    context "index" do
      it "assigns all boulder_route_photos as @boulder_route_photos" do
        boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
        get :index, {}, valid_session
        expect(assigns(:boulder_route_photos)).to eq([boulder_route_photo])
      end
    end

    describe "show" do
      it "assigns the requested boulder_route_photo as @boulder_route_photo" do
        boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
        get :show, {:id => boulder_route_photo.to_param}, valid_session
        expect(assigns(:boulder_route_photo)).to eq(boulder_route_photo)
      end
    end

    describe "new" do
      it "assigns a new boulder_route_photo as @boulder_route_photo" do
        get :new, {}, valid_session
        expect(assigns(:boulder_route_photo)).to be_a_new(BoulderRoutePhoto)
      end
    end

    describe "edit" do
      it "assigns the requested boulder_route_photo as @boulder_route_photo" do
        boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
        get :edit, {:id => boulder_route_photo.to_param}, valid_session
        expect(assigns(:boulder_route_photo)).to eq(boulder_route_photo)
      end
    end

    describe "json" do
      it "returns a valid json object" do
        region = FactoryGirl.create(:boulder_route_photo, id:1)
        json = get(:getJson, {}, valid_session)
        expect(json).to_not be_nil;
      end
    end

  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BoulderRoutePhoto" do
        expect {
          post :create, {:boulder_route_photo => valid_attributes}, valid_session
        }.to change(BoulderRoutePhoto, :count).by(1)
      end

      it "assigns a newly created boulder_route_photo as @boulder_route_photo" do
        post :create, {:boulder_route_photo => valid_attributes}, valid_session
        expect(assigns(:boulder_route_photo)).to be_a(BoulderRoutePhoto)
        expect(assigns(:boulder_route_photo)).to be_persisted
      end

      it "redirects to the created boulder_route_photo" do
        post :create, {:boulder_route_photo => valid_attributes}, valid_session
        expect(response).to redirect_to(BoulderRoutePhoto.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved boulder_route_photo as @boulder_route_photo" do
        post :create, {:boulder_route_photo => invalid_attributes}, valid_session
        expect(assigns(:boulder_route_photo)).to be_a_new(BoulderRoutePhoto)
      end

      it "re-renders the 'new' template" do
        post :create, {:boulder_route_photo => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        FactoryGirl.attributes_for(:boulder_route_photo, title:"It's Jimmy!")
      }

      it "updates the requested boulder_route_photo" do
        boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
        put :update, {:id => boulder_route_photo.to_param, :boulder_route_photo => new_attributes}, valid_session
        boulder_route_photo.reload
        expect(boulder_route_photo.title).to eq("It's Jimmy!")
      end

      it "assigns the requested boulder_route_photo as @boulder_route_photo" do
        boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
        put :update, {:id => boulder_route_photo.to_param, :boulder_route_photo => valid_attributes}, valid_session
        expect(assigns(:boulder_route_photo)).to eq(boulder_route_photo)
      end

      it "redirects to the boulder_route_photo" do
        boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
        put :update, {:id => boulder_route_photo.to_param, :boulder_route_photo => valid_attributes}, valid_session
        expect(response).to redirect_to(boulder_route_photo)
      end
    end

    describe "with invalid params" do
      it "assigns the boulder_route_photo as @boulder_route_photo" do
        boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
        put :update, {:id => boulder_route_photo.to_param, :boulder_route_photo => invalid_attributes}, valid_session
        expect(assigns(:boulder_route_photo)).to eq(boulder_route_photo)
      end

      it "re-renders the 'edit' template" do
        boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
        put :update, {:id => boulder_route_photo.to_param, :boulder_route_photo => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested boulder_route_photo" do
      boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
      expect {
        delete :destroy, {:id => boulder_route_photo.to_param}, valid_session
      }.to change(BoulderRoutePhoto, :count).by(-1)
    end

    it "redirects to the boulder_route_photos list" do
      boulder_route_photo = BoulderRoutePhoto.create! valid_attributes
      delete :destroy, {:id => boulder_route_photo.to_param}, valid_session
      expect(response).to redirect_to(boulder_route_photos_url)
    end
  end

end