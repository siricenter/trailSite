class SportRouteVideosController < ApplicationController
  before_action :set_sport_route_video, only: [:show, :edit, :update, :destroy]
  before_action :authorizeManager, except: [:show, :getJson] # Manager level or higher priveleges are required

  # GET /sport_route_videos
  # GET /sport_route_videos.json
  def index
    @sport_route_videos = SportRouteVideo.all
  end

  # GET /sport_route_videos/1
  # GET /sport_route_videos/1.json
  def show
  end

  # GET /sport_route_videos/new
  def new
    @sport_route_video = SportRouteVideo.new
      @sport_route_video.sport_route_id = params[:id]
  end

  # GET /sport_route_videos/1/edit
  def edit
  end

  # POST /sport_route_videos
  # POST /sport_route_videos.json
  def create
    @sport_route_video = SportRouteVideo.new(sport_route_video_params)

    respond_to do |format|
      if @sport_route_video.save
        format.html { redirect_to @sport_route_video, notice: 'Sport route video was successfully created.' }
        format.json { render :show, status: :created, location: @sport_route_video }
      else
        format.html { render :new }
        format.json { render json: @sport_route_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sport_route_videos/1
  # PATCH/PUT /sport_route_videos/1.json
  def update
    respond_to do |format|
      if @sport_route_video.update(sport_route_video_params)
        format.html { redirect_to @sport_route_video, notice: 'Sport route video was successfully updated.' }
        format.json { render :show, status: :ok, location: @sport_route_video }
      else
        format.html { render :edit }
        format.json { render json: @sport_route_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_route_videos/1
  # DELETE /sport_route_videos/1.json
  def destroy
    @sport_route_video.destroy
    respond_to do |format|
      format.html { redirect_to sport_route_videos_url, notice: 'Sport route video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport_route_video
      @sport_route_video = SportRouteVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sport_route_video_params
      params.require(:sport_route_video).permit(:title, :sport_route_id, :url, :description, :user_id)
    end
end
