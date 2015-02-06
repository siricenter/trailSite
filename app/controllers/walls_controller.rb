class WallsController < ApplicationController
  before_action :set_wall, only: [:show, :edit, :update, :destroy]
  before_action :authorizeManager, except: [:show, :getJson] # Manager level or higher priveleges are required

  # GET /walls
  # GET /walls.json
  def index
    @walls = Wall.all
  end

  # GET /walls/1
  # GET /walls/1.json
  def show
    @mapData = getData()
    @routes = @mapData["children"]
    @sport_routes = SportRoute.where( wall_id: params[:id] )
    @traditional_routes = TraditionalRoute.where( wall_id: params[:id] )
    @boulder_routes = BoulderRoute.where( wall_id: params[:id] )
    @wall_photos = WallPhoto.where( wall_id: params[:id] )

  end

  # GET /walls/new
  def new
    @wall = Wall.new
    @wall.crag_id = params[:id]
  end

  # GET /walls/1/edit
  def edit
    @mapData = getData()
  end

  # POST /walls
  # POST /walls.json
  def create
    @wall = Wall.new(wall_params)

    respond_to do |format|
      if @wall.save
        format.html { redirect_to @wall, notice: 'Wall was successfully created.' }
        format.json { render :show, status: :created, location: @wall }
      else
        format.html { render :new }
        format.json { render json: @wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /walls/1
  # PATCH/PUT /walls/1.json
  def update
    respond_to do |format|
      if @wall.update(wall_params)
        format.html { redirect_to @wall, notice: 'Wall was successfully updated.' }
        format.json { render :show, status: :ok, location: @wall }
      else
        format.html { render :edit }
        format.json { render json: @wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walls/1
  # DELETE /walls/1.json
  def destroy
    @wall.destroy
    respond_to do |format|
      format.html { redirect_to walls_url, notice: 'Wall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # get a json array
  def getJson
      render json: getData()
  end
      
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_wall
      @wall = Wall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wall_params
      params.require(:wall).permit(:crag_id, :name, :longitude, :latitude, :zoom, :directions, :description, :history)
    end

    def getData
      if params[:id].present?
        hash = Hash.new
      routeArray = []
      hash["parent"] = Wall.find(params[:id])
      routeArray.push SportRoute.where(wall_id: params[:id])
      routeArray.push TraditionalRoute.where(wall_id: params[:id])
      routeArray.push BoulderRoute.where(wall_id: params[:id])
      hash["children"] = routeArray
      hash["child_url"] = [sport_routes_path, traditional_routes_path, boulder_routes_path]
        return hash
      else
        # all parents
          return (Area.all)
      end
    end
  end
