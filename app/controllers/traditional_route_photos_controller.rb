class TraditionalRoutePhotosController < ApplicationController
  before_action :set_traditional_route_photo, only: [:show, :edit, :update, :destroy]

  # GET /traditional_route_photos
  # GET /traditional_route_photos.json
  def index
    @traditional_route_photos = TraditionalRoutePhoto.all
  end

  # GET /traditional_route_photos/1
  # GET /traditional_route_photos/1.json
  def show
  end

  # GET /traditional_route_photos/new
  def new
    @traditional_route_photo = TraditionalRoutePhoto.new
    @traditional_route_photo.traditional_route_id = params[:id]
  end

  # GET /traditional_route_photos/1/edit
  def edit
  end

  # POST /traditional_route_photos
  # POST /traditional_route_photos.json
  def create
    @traditional_route_photo = TraditionalRoutePhoto.new(traditional_route_photo_params)

    respond_to do |format|
      if @traditional_route_photo.save
        format.html { redirect_to @traditional_route_photo, notice: 'Traditional route photo was successfully created.' }
        format.json { render :show, status: :created, location: @traditional_route_photo }
      else
        format.html { render :new }
        format.json { render json: @traditional_route_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traditional_route_photos/1
  # PATCH/PUT /traditional_route_photos/1.json
  def update
    respond_to do |format|
      if @traditional_route_photo.update(traditional_route_photo_params)
        format.html { redirect_to @traditional_route_photo, notice: 'Traditional route photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @traditional_route_photo }
      else
        format.html { render :edit }
        format.json { render json: @traditional_route_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traditional_route_photos/1
  # DELETE /traditional_route_photos/1.json
  def destroy
    @traditional_route_photo.destroy
    respond_to do |format|
      format.html { redirect_to traditional_route_photos_url, notice: 'Traditional route photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # get a json array
  def getJson
    render json: (TraditionalRoutePhoto.all)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traditional_route_photo
      @traditional_route_photo = TraditionalRoutePhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def traditional_route_photo_params
      params.require(:traditional_route_photo).permit(:title, :traditional_route_id, :url)
    end
end
