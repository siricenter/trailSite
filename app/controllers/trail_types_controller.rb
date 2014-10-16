class TrailTypesController < ApplicationController
  before_action :set_trail_type, only: [:show, :edit, :update, :destroy]

  # GET /trail_types
  # GET /trail_types.json
  def index
    @trail_types = TrailType.all
  end

  # GET /trail_types/1
  # GET /trail_types/1.json
  def show
  end

  # GET /trail_types/new
  def new
    @trail_type = TrailType.new
  end

  # GET /trail_types/1/edit
  def edit
  end

  # POST /trail_types
  # POST /trail_types.json
  def create
    @trail_type = TrailType.new(trail_type_params)

    respond_to do |format|
      if @trail_type.save
        format.html { redirect_to @trail_type, notice: 'Trail type was successfully created.' }
        format.json { render :show, status: :created, location: @trail_type }
      else
        format.html { render :new }
        format.json { render json: @trail_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trail_types/1
  # PATCH/PUT /trail_types/1.json
  def update
    respond_to do |format|
      if @trail_type.update(trail_type_params)
        format.html { redirect_to @trail_type, notice: 'Trail type was successfully updated.' }
        format.json { render :show, status: :ok, location: @trail_type }
      else
        format.html { render :edit }
        format.json { render json: @trail_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trail_types/1
  # DELETE /trail_types/1.json
  def destroy
    @trail_type.destroy
    respond_to do |format|
      format.html { redirect_to trail_types_url, notice: 'Trail type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trail_type
      @trail_type = TrailType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trail_type_params
      params.require(:trail_type).permit(:name)
    end
end
