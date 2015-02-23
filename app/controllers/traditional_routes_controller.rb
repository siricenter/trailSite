require "danger_rating";

class TraditionalRoutesController < ApplicationController
  before_action :set_traditional_route, only: [:show, :edit, :update, :destroy]
  before_action :authorizeManager, except: [:show, :getJson] # Manager level or higher priveleges are required

  # GET /traditional_routes
  # GET /traditional_routes.json
  def index
    @traditional_routes = TraditionalRoute.all
  end

  # GET /traditional_routes/1
  # GET /traditional_routes/1.json
  def show
      @mapData = getData();
    @traditional_route_photos = TraditionalRoutePhoto.where(traditional_route_id: params[:id])
      @traditional_route_videos = TraditionalRouteVideo.where(traditional_route_id: params[:id])
  end

  # GET /traditional_routes/new
  def new
    @traditional_route = TraditionalRoute.new
    @traditional_route.wall_id = params[:id]
  end

  # GET /traditional_routes/1/edit
  def edit
  end

  # POST /traditional_routes
  # POST /traditional_routes.json
  def create
    @traditional_route = TraditionalRoute.new(traditional_route_params)

    respond_to do |format|
      if @traditional_route.save
        format.html { redirect_to @traditional_route, notice: 'Traditional route was successfully created.' }
        format.json { render :show, status: :created, location: @traditional_route }
      else
        format.html { render :new }
        format.json { render json: @traditional_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traditional_routes/1
  # PATCH/PUT /traditional_routes/1.json
  def update
    respond_to do |format|
      if @traditional_route.update(traditional_route_params)
        format.html { redirect_to @traditional_route, notice: 'Traditional route was successfully updated.' }
        format.json { render :show, status: :ok, location: @traditional_route }
      else
        format.html { render :edit }
        format.json { render json: @traditional_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traditional_routes/1
  # DELETE /traditional_routes/1.json
  def destroy
    @traditional_route.destroy
    respond_to do |format|
      format.html { redirect_to traditional_routes_url, notice: 'Traditional route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    # get a json array
  def getJson
      render json: getData()
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_traditional_route
        @traditional_route = TraditionalRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def traditional_route_params
        params.require(:traditional_route).permit(:name, :grade_id, :latitude, :longitude, :zoom, :description, :directions, :wall_id, :danger_rating, :gear_needed, :stars, :pitches, :length, :anchor)
    end
    
    def getData
      if params[:id].present?
          
        hash = Hash.new
        hash["parent"] = TraditionalRoute.find(params[:id])
        hash["children"] = nil
        hash["child_url"] = nil
        return hash
      else
          return TraditionalRoute.all
      end
    end
end

