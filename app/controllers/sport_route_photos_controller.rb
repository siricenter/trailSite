class SportRoutePhotosController < ApplicationController
  before_action :set_sport_route_photo, only: [:show, :edit, :update, :destroy]

  # GET /sport_route_photos
  # GET /sport_route_photos.json
  def index
    @sport_route_photos = SportRoutePhoto.all
  end

  # GET /sport_route_photos/1
  # GET /sport_route_photos/1.json
  def show
  end

  # GET /sport_route_photos/new
  def new
    @sport_route_photo = SportRoutePhoto.new
    @sport_route_photo.sport_route_id = params[:id]
  end

  # GET /sport_route_photos/1/edit
  def edit
  end

  # POST /sport_route_photos
  # POST /sport_route_photos.json
  def create
    @sport_route_photo = SportRoutePhoto.new(sport_route_photo_params)

    respond_to do |format|
      if @sport_route_photo.save
        format.html { redirect_to @sport_route_photo, notice: 'Sport route photo was successfully created.' }
        format.json { render :show, status: :created, location: @sport_route_photo }
      else
        format.html { render :new }
        format.json { render json: @sport_route_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sport_route_photos/1
  # PATCH/PUT /sport_route_photos/1.json
  def update
    respond_to do |format|
      if @sport_route_photo.update(sport_route_photo_params)
        format.html { redirect_to @sport_route_photo, notice: 'Sport route photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @sport_route_photo }
      else
        format.html { render :edit }
        format.json { render json: @sport_route_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_route_photos/1
  # DELETE /sport_route_photos/1.json
  def destroy
    @sport_route_photo.destroy
    respond_to do |format|
      format.html { redirect_to sport_route_photos_url, notice: 'Sport route photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # get a json array
  def getJson
    render json: (SportRoutePhoto.all)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport_route_photo
      @sport_route_photo = SportRoutePhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sport_route_photo_params
      params.require(:sport_route_photo).permit(:title, :sport_route_id, :url)
    end
end
