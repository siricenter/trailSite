class TraditionalRouteVideosController < ApplicationController
  before_action :set_traditional_route_video, only: [:show, :edit, :update, :destroy]
  before_action :authorizeManager, except: [:show, :getJson] # Manager level or higher priveleges are required

  # GET /traditional_route_videos
  # GET /traditional_route_videos.json
  def index
    @traditional_route_videos = TraditionalRouteVideo.all
  end

  # GET /traditional_route_videos/1
  # GET /traditional_route_videos/1.json
  def show
  end

  # GET /traditional_route_videos/new
  def new
    @traditional_route_video = TraditionalRouteVideo.new
      @traditional_route_video.traditional_route_id = params[:id]
  end

  # GET /traditional_route_videos/1/edit
  def edit
  end

  # POST /traditional_route_videos
  # POST /traditional_route_videos.json
  def create
    @traditional_route_video = TraditionalRouteVideo.new(traditional_route_video_params)

    respond_to do |format|
      if @traditional_route_video.save
        format.html { redirect_to @traditional_route_video, notice: 'Traditional route video was successfully created.' }
        format.json { render :show, status: :created, location: @traditional_route_video }
      else
        format.html { render :new }
        format.json { render json: @traditional_route_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traditional_route_videos/1
  # PATCH/PUT /traditional_route_videos/1.json
  def update
    respond_to do |format|
      if @traditional_route_video.update(traditional_route_video_params)
        format.html { redirect_to @traditional_route_video, notice: 'Traditional route video was successfully updated.' }
        format.json { render :show, status: :ok, location: @traditional_route_video }
      else
        format.html { render :edit }
        format.json { render json: @traditional_route_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traditional_route_videos/1
  # DELETE /traditional_route_videos/1.json
  def destroy
    @traditional_route_video.destroy
    respond_to do |format|
      format.html { redirect_to traditional_route_videos_url, notice: 'Traditional route video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traditional_route_video
      @traditional_route_video = TraditionalRouteVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def traditional_route_video_params
      params.require(:traditional_route_video).permit(:title, :traditional_route_id, :url, :description, :user_id)
    end
end
