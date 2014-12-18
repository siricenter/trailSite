class CragsController < ApplicationController
  before_action :set_crag, only: [:show, :edit, :update, :destroy]
  before_action :authorizeManager, except: [:show, :getJson] # Manager level or higher priveleges are required

  # GET /crags
  # GET /crags.json
  def index
    @crags = Crag.all
  end

  # GET /crags/1
  # GET /crags/1.json
  def show
    @mapData = getData()
    @walls = @mapData["children"]
  end

  # GET /crags/new
  def new
    @crag = Crag.new
    @crag.territory_id = params[:id]
  end

  # GET /crags/1/edit
  def edit
    @mapData = getData()
  end

  # POST /crags
  # POST /crags.json
  def create
    @crag = Crag.new(crag_params)

    respond_to do |format|
      if @crag.save
        format.html { redirect_to @crag, notice: 'Crag was successfully created.' }
        format.json { render :show, status: :created, location: @crag }
      else
        format.html { render :new }
        format.json { render json: @crag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crags/1
  # PATCH/PUT /crags/1.json
  def update
    respond_to do |format|
      if @crag.update(crag_params)
        format.html { redirect_to @crag, notice: 'Crag was successfully updated.' }
        format.json { render :show, status: :ok, location: @crag }
      else
        format.html { render :edit }
        format.json { render json: @crag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crags/1
  # DELETE /crags/1.json
  def destroy
    @crag.destroy
    respond_to do |format|
      format.html { redirect_to crags_url, notice: 'Crag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # get a json array
  def getJson
    render json: getData()
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crag
      @crag = Crag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crag_params
      params.require(:crag).permit(:territory_id, :name, :longitude, :latitude, :zoom, :directions, :description, :history)
    end

    def getData
      if params[:id].present?
        hash = Hash.new
        hash["parent"] = Crag.find(params[:id])
        hash["children"] = Wall.where(crag_id: params[:id])
        hash["child_url"] = walls_path;
        return hash
      else
        # all parents
        return (Crag.all)
      end
    end
end
