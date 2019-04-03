class MappsController < ApplicationController
  before_action :set_mapp, only: [:show, :edit, :update, :destroy]

  # GET /mapps
  # GET /mapps.json
  def index
    @mapps = Mapp.all
  end

  # GET /mapps/1
  # GET /mapps/1.json
  def show
  end

  # GET /mapps/new
  def new
    @mapp = Mapp.new
  end

  # GET /mapps/1/edit
  def edit
  end

  # POST /mapps
  # POST /mapps.json
  def create
    @mapp = Mapp.new(mapp_params)

    respond_to do |format|
      if @mapp.save
        format.html { redirect_to @mapp, notice: 'Subrcriber  Created' }
        format.json { render :index, status: :created, location: @mapp }
      else
        format.html { render :new }
        format.json { render json: @mapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mapps/1
  # PATCH/PUT /mapps/1.json
  def update
    respond_to do |format|
      if @mapp.update(mapp_params)
        format.html { redirect_to @mapp, notice: 'Mapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @mapp }
      else
        format.html { render :edit }
        format.json { render json: @mapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mapps/1
  # DELETE /mapps/1.json
  def destroy
    @mapp.destroy
    respond_to do |format|
      format.html { redirect_to mapps_url, notice: 'Mapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mapp
      @mapp = Mapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mapp_params
      params.require(:mapp).permit(:name, :number)
    end
end
