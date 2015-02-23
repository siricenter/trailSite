class BoulderRouteVideosController < ApplicationController
  before_action :set_boulder_route_video, only: [:show, :edit, :update, :destroy]
  before_action :authorizeManager, except: [:show, :getJson] # Manager level or higher priveleges are required

  # GET /boulder_route_videos
  # GET /boulder_route_videos.json
  def index
    @boulder_route_videos = BoulderRouteVideo.all
  end

  # GET /boulder_route_videos/1
  # GET /boulder_route_videos/1.json
  def show
  end

  # GET /boulder_route_videos/new
  def new
    @boulder_route_video = BoulderRouteVideo.new
      @boulder_route_video.boulder_route_id = params[:id]
  end

  # GET /boulder_route_videos/1/edit
  def edit
  end

  # POST /boulder_route_videos
  # POST /boulder_route_videos.json
  def create
    @boulder_route_video = BoulderRouteVideo.new(boulder_route_video_params)

    respond_to do |format|
      if @boulder_route_video.save
        format.html { redirect_to @boulder_route_video, notice: 'Boulder route video was successfully created.' }
        format.json { render :show, status: :created, location: @boulder_route_video }
      else
        format.html { render :new }
        format.json { render json: @boulder_route_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boulder_route_videos/1
  # PATCH/PUT /boulder_route_videos/1.json
  def update
    respond_to do |format|
      if @boulder_route_video.update(boulder_route_video_params)
        format.html { redirect_to @boulder_route_video, notice: 'Boulder route video was successfully updated.' }
        format.json { render :show, status: :ok, location: @boulder_route_video }
      else
        format.html { render :edit }
        format.json { render json: @boulder_route_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boulder_route_videos/1
  # DELETE /boulder_route_videos/1.json
  def destroy
    @boulder_route_video.destroy
    respond_to do |format|
      format.html { redirect_to boulder_route_videos_url, notice: 'Boulder route video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boulder_route_video
      @boulder_route_video = BoulderRouteVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boulder_route_video_params
      params.require(:boulder_route_video).permit(:title, :boulder_route_id, :url, :description, :user_id)
    end
end
