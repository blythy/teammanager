class PositioningsController < ApplicationController
  before_action :set_positioning, only: [:show, :edit, :update, :destroy]

  # GET /positionings
  # GET /positionings.json
  def index
    @positionings = Positioning.all
  end

  # GET /positionings/1
  # GET /positionings/1.json
  def show
  end

  # GET /positionings/new
  def new
    @positioning = Positioning.new
  end

  # GET /positionings/1/edit
  def edit
  end

  # POST /positionings
  # POST /positionings.json
  def create
    @positioning = Positioning.new(positioning_params)

    respond_to do |format|
      if @positioning.save
        format.html { redirect_to @positioning, notice: 'Positioning was successfully created.' }
        format.json { render :show, status: :created, location: @positioning }
      else
        format.html { render :new }
        format.json { render json: @positioning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positionings/1
  # PATCH/PUT /positionings/1.json
  def update
    respond_to do |format|
      if @positioning.update(positioning_params)
        format.html { redirect_to @positioning, notice: 'Positioning was successfully updated.' }
        format.json { render :show, status: :ok, location: @positioning }
      else
        format.html { render :edit }
        format.json { render json: @positioning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positionings/1
  # DELETE /positionings/1.json
  def destroy
    @positioning.destroy
    respond_to do |format|
      format.html { redirect_to positionings_url, notice: 'Positioning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_positioning
      @positioning = Positioning.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def positioning_params
      params.require(:positioning).permit(:player_id, :position_id)
    end
end
