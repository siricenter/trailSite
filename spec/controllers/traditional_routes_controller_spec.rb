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

RSpec.describe TraditionalRoutesController, :type => :controller do


  before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  let(:valid_attributes) {
    FactoryGirl.attributes_for(:traditional_route)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:traditional_route, name:nil, latitude: nil, longitude: nil, zoom:nil, )
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TraditionalRoutesController. Be sure to keep this updated too.
  let(:valid_session) { { username: "jimmy", user_type: 'admin', user_id: 1 } }

  # GET
  describe "GET" do

    before(:each) do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.start
      DatabaseCleaner.clean
    end

    context "index" do
      it "assigns all traditional_routes as @traditional_routes" do
        traditional_route = TraditionalRoute.create! valid_attributes
        get :index, {}, valid_session
        expect(assigns(:traditional_routes)).to eq([traditional_route])
      end
    end

    describe "show" do
      it "assigns the requested traditional_route as @traditional_route" do
        traditional_route = TraditionalRoute.create! valid_attributes
        get :show, {:id => traditional_route.to_param}, valid_session
        expect(assigns(:traditional_route)).to eq(traditional_route)
      end
    end

    describe "new" do
      it "assigns a new traditional_route as @traditional_route" do
        get :new, {}, valid_session
        expect(assigns(:traditional_route)).to be_a_new(TraditionalRoute)
      end
    end

    describe "edit" do
      it "assigns the requested traditional_route as @traditional_route" do
        traditional_route = TraditionalRoute.create! valid_attributes
        get :edit, {:id => traditional_route.to_param}, valid_session
        expect(assigns(:traditional_route)).to eq(traditional_route)
      end
    end

    describe "json" do
      it "returns a valid json object" do
        subject = FactoryGirl.create(:traditional_route, id:1)
        json = get(:getJson, {}, valid_session)
        expect(json).to_not be_nil;
      end

      it "returns a valid json object when given an id" do
        subject = FactoryGirl.create(:traditional_route) 
        json = get(:getJson, {id: subject.wall_id}, valid_session)
        expect(json).to_not be_nil;
      end

    end

  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TraditionalRoute" do
        expect {
          post :create, {:traditional_route => valid_attributes}, valid_session
        }.to change(TraditionalRoute, :count).by(1)
      end

      it "assigns a newly created traditional_route as @traditional_route" do
        post :create, {:traditional_route => valid_attributes}, valid_session
        expect(assigns(:traditional_route)).to be_a(TraditionalRoute)
        expect(assigns(:traditional_route)).to be_persisted
      end

      it "redirects to the created traditional_route" do
        post :create, {:traditional_route => valid_attributes}, valid_session
        expect(response).to redirect_to(TraditionalRoute.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved traditional_route as @traditional_route" do
        post :create, {:traditional_route => invalid_attributes}, valid_session
        expect(assigns(:traditional_route)).to be_a_new(TraditionalRoute)
      end

      it "re-renders the 'new' template" do
        post :create, {:traditional_route => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        FactoryGirl.attributes_for(:traditional_route, name:"It's Jimmy!")
      }

      it "updates the requested traditional_route" do
        traditional_route = TraditionalRoute.create! valid_attributes
        put :update, {:id => traditional_route.to_param, :traditional_route => new_attributes}, valid_session
        traditional_route.reload
        expect(traditional_route.name).to eq("It's Jimmy!")
      end

      it "assigns the requested traditional_route as @traditional_route" do
        traditional_route = TraditionalRoute.create! valid_attributes
        put :update, {:id => traditional_route.to_param, :traditional_route => valid_attributes}, valid_session
        expect(assigns(:traditional_route)).to eq(traditional_route)
      end

      it "redirects to the traditional_route" do
        traditional_route = TraditionalRoute.create! valid_attributes
        put :update, {:id => traditional_route.to_param, :traditional_route => valid_attributes}, valid_session
        expect(response).to redirect_to(traditional_route)
      end
    end

    describe "with invalid params" do
      it "assigns the traditional_route as @traditional_route" do
        traditional_route = TraditionalRoute.create! valid_attributes
        put :update, {:id => traditional_route.to_param, :traditional_route => invalid_attributes}, valid_session
        expect(assigns(:traditional_route)).to eq(traditional_route)
      end

      it "re-renders the 'edit' template" do
        traditional_route = TraditionalRoute.create! valid_attributes
        put :update, {:id => traditional_route.to_param, :traditional_route => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested traditional_route" do
      traditional_route = TraditionalRoute.create! valid_attributes
      expect {
        delete :destroy, {:id => traditional_route.to_param}, valid_session
      }.to change(TraditionalRoute, :count).by(-1)
    end

    it "redirects to the traditional_routes list" do
      traditional_route = TraditionalRoute.create! valid_attributes
      delete :destroy, {:id => traditional_route.to_param}, valid_session
      expect(response).to redirect_to(traditional_routes_url)
    end
  end

end
