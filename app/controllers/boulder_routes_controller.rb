class BoulderRoutesController < ApplicationController
  before_action :set_boulder_route, only: [:show, :edit, :update, :destroy]

  # GET /boulder_routes
  # GET /boulder_routes.json
  def index
    @boulder_routes = BoulderRoute.all
  end

  # GET /boulder_routes/1
  # GET /boulder_routes/1.json
  def show
  end

  # GET /boulder_routes/new
  def new
    @boulder_route = BoulderRoute.new
  end

  # GET /boulder_routes/1/edit
  def edit
  end

  # POST /boulder_routes
  # POST /boulder_routes.json
  def create
    @boulder_route = BoulderRoute.new(boulder_route_params)

    respond_to do |format|
      if @boulder_route.save
        format.html { redirect_to @boulder_route, notice: 'Boulder route was successfully created.' }
        format.json { render :show, status: :created, location: @boulder_route }
      else
        format.html { render :new }
        format.json { render json: @boulder_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boulder_routes/1
  # PATCH/PUT /boulder_routes/1.json
  def update
    respond_to do |format|
      if @boulder_route.update(boulder_route_params)
        format.html { redirect_to @boulder_route, notice: 'Boulder route was successfully updated.' }
        format.json { render :show, status: :ok, location: @boulder_route }
      else
        format.html { render :edit }
        format.json { render json: @boulder_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boulder_routes/1
  # DELETE /boulder_routes/1.json
  def destroy
    @boulder_route.destroy
    respond_to do |format|
      format.html { redirect_to boulder_routes_url, notice: 'Boulder route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boulder_route
      @boulder_route = BoulderRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boulder_route_params
      params.require(:boulder_route).permit(:name, :latitude, :longitude, :zoom, :description, :directions, :wall_id, :danger_rating, :stars, :pads, :hueco_grade, :length)
    end
end
