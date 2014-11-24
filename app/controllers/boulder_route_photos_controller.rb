class BoulderRoutePhotosController < ApplicationController
  before_action :set_boulder_route_photo, only: [:show, :edit, :update, :destroy]

  # GET /boulder_route_photos
  # GET /boulder_route_photos.json
  def index
    @boulder_route_photos = BoulderRoutePhoto.all
  end

  # GET /boulder_route_photos/1
  # GET /boulder_route_photos/1.json
  def show
  end

  # GET /boulder_route_photos/new
  def new
    @boulder_route_photo = BoulderRoutePhoto.new
    @boulder_route_photo.boulder_route_id = params[:id]
  end

  # GET /boulder_route_photos/1/edit
  def edit
  end

  # POST /boulder_route_photos
  # POST /boulder_route_photos.json
  def create
    @boulder_route_photo = BoulderRoutePhoto.new(boulder_route_photo_params)

    respond_to do |format|
      if @boulder_route_photo.save
        format.html { redirect_to @boulder_route_photo, notice: 'Boulder route photo was successfully created.' }
        format.json { render :show, status: :created, location: @boulder_route_photo }
      else
        format.html { render :new }
        format.json { render json: @boulder_route_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boulder_route_photos/1
  # PATCH/PUT /boulder_route_photos/1.json
  def update
    respond_to do |format|
      if @boulder_route_photo.update(boulder_route_photo_params)
        format.html { redirect_to @boulder_route_photo, notice: 'Boulder route photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @boulder_route_photo }
      else
        format.html { render :edit }
        format.json { render json: @boulder_route_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boulder_route_photos/1
  # DELETE /boulder_route_photos/1.json
  def destroy
    @boulder_route_photo.destroy
    respond_to do |format|
      format.html { redirect_to boulder_route_photos_url, notice: 'Boulder route photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # get a json array
  def getJson
    if params[:id].present?
      render json: (BoulderRoutePhoto.where(boulder_route_id: params[:id]))
    else
      render json: (BoulderRoutePhoto.all)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boulder_route_photo
      @boulder_route_photo = BoulderRoutePhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boulder_route_photo_params
      params.require(:boulder_route_photo).permit(:title, :boulder_route_id, :url)
    end
end
