class WallPhotosController < ApplicationController
  before_action :set_wall_photo, only: [:show, :edit, :update, :destroy]

  # GET /wall_photos
  # GET /wall_photos.json
  def index
    if params[:id].present?
      @wall_photos = WallPhoto.where(wall_id: params[:id].to_s)
    else
      @wall_photos = WallPhoto.all
    end
  end

  # GET /wall_photos/1
  # GET /wall_photos/1.json
  def show
  end

  # GET /wall_photos/new
  def new
    @wall_photo = WallPhoto.new
    @wall_photo.wall_id = params[:id]
  end

  # GET /wall_photos/1/edit
  def edit
  end

  # POST /wall_photos
  # POST /wall_photos.json
  def create
    @wall_photo = WallPhoto.new(wall_photo_params)

    respond_to do |format|
      if @wall_photo.save
        format.html { redirect_to @wall_photo, notice: 'Wall photo was successfully created.' }
        format.json { render :show, status: :created, location: @wall_photo }
      else
        format.html { render :new }
        format.json { render json: @wall_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wall_photos/1
  # PATCH/PUT /wall_photos/1.json
  def update
    respond_to do |format|
      if @wall_photo.update(wall_photo_params)
        format.html { redirect_to @wall_photo, notice: 'Wall photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @wall_photo }
      else
        format.html { render :edit }
        format.json { render json: @wall_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wall_photos/1
  # DELETE /wall_photos/1.json
  def destroy
    @wall_photo.destroy
    respond_to do |format|
      format.html { redirect_to wall_photos_url, notice: 'Wall photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # get a json array
  def getJson
    render json: (WallPhoto.all)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wall_photo
      @wall_photo = WallPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wall_photo_params
      params.require(:wall_photo).permit(:title, :wall_id, :url)
    end
end
