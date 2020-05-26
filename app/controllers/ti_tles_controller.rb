class TiTlesController < ApplicationController
  before_action :set_ti_tle, only: [:show, :edit, :update, :destroy]

  # GET /ti_tles
  # GET /ti_tles.json
  def index
    @ti_tles = TiTle.all
  end

  # GET /ti_tles/1
  # GET /ti_tles/1.json
  def show
  end

  # GET /ti_tles/new
  def new
    @ti_tle = TiTle.new
  end

  # GET /ti_tles/1/edit
  def edit
  end

  # POST /ti_tles
  # POST /ti_tles.json
  def create
    @ti_tle = TiTle.new(ti_tle_params)

    respond_to do |format|
      if @ti_tle.save
        format.html { redirect_to @ti_tle, notice: 'Ti tle was successfully created.' }
        format.json { render :show, status: :created, location: @ti_tle }
      else
        format.html { render :new }
        format.json { render json: @ti_tle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ti_tles/1
  # PATCH/PUT /ti_tles/1.json
  def update
    respond_to do |format|
      if @ti_tle.update(ti_tle_params)
        format.html { redirect_to @ti_tle, notice: 'Ti tle was successfully updated.' }
        format.json { render :show, status: :ok, location: @ti_tle }
      else
        format.html { render :edit }
        format.json { render json: @ti_tle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ti_tles/1
  # DELETE /ti_tles/1.json
  def destroy
    @ti_tle.destroy
    respond_to do |format|
      format.html { redirect_to ti_tles_url, notice: 'Ti tle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ti_tle
      @ti_tle = TiTle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ti_tle_params
      params.require(:ti_tle).permit(:title, :message)
    end
end
