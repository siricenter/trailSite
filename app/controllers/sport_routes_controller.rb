require "anchor_type";
require "danger_rating";

class SportRoutesController < ApplicationController
  before_action :set_sport_route, only: [:show, :edit, :update, :destroy]
  before_action :authorizeManager, except: [:show, :getJson] # Manager level or higher priveleges are required

  # GET /sport_routes
  # GET /sport_routes.json
  def index
    @sport_routes = SportRoute.all
  end

  # GET /sport_routes/1
  # GET /sport_routes/1.json
  def show
      @mapData = getData()
    @sport_route_photos = SportRoutePhoto.where(sport_route_id: params[:id])
      @sport_route_videos = SportRouteVideo.where(sport_route_id: params[:id])
  end

  # GET /sport_routes/new
  def new
    @sport_route = SportRoute.new
    @sport_route.wall_id = params[:id]
  end

  # GET /sport_routes/1/edit
  def edit
      
      
  end

  # POST /sport_routes
  # POST /sport_routes.json
  def create
    @sport_route = SportRoute.new(sport_route_params)

    respond_to do |format|
      if @sport_route.save
        format.html { redirect_to @sport_route, notice: 'Sport route was successfully created.' }
        format.json { render :show, status: :created, location: @sport_route }
      else
        format.html { render :new }
        format.json { render json: @sport_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sport_routes/1
  # PATCH/PUT /sport_routes/1.json
  def update
    respond_to do |format|
      if @sport_route.update(sport_route_params)
        format.html { redirect_to @sport_route, notice: 'Sport route was successfully updated.' }
        format.json { render :show, status: :ok, location: @sport_route }
      else
        format.html { render :edit }
        format.json { render json: @sport_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_routes/1
  # DELETE /sport_routes/1.json
  def destroy
    @sport_route.destroy
    respond_to do |format|
      format.html { redirect_to sport_routes_url, notice: 'Sport route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # get a json array
  def getJson
      render json: getData()
  end
   def get_sport_routes_from_wall
       render json: SportRoute.where(wall_id: params[:wall_id])
   end
  private

    # Use callbacks to share common setup or constraints between actions.
    def set_sport_route
      @sport_route = SportRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sport_route_params
      params.require(:sport_route).permit(:name, :latitude, :longitude, :zoom, :description, :directions, :wall_id, :grade_id, :danger_rating, :bolts, :stars, :pitches, :anchor, :length, :next_route, :prev_route)
    end
    
    def getData
      if params[:id].present?
          
        hash = Hash.new
        hash["parent"] = SportRoute.find(params[:id])
        hash["children"] = nil
        hash["child_url"] = nil
        return hash
      else
        return SportRoute.all
      end
    end
    
   
end
