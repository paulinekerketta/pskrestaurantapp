class DriverslistsController < ApplicationController
  before_action :set_driverslist, only: [:show, :edit, :update, :destroy]

  # GET /driverslists
  # GET /driverslists.json
  def index
    @driverslists = Driverslist.all
  end

  # GET /driverslists/1
  # GET /driverslists/1.json
  def show
  end

  # GET /driverslists/new
  def new
    @driverslist = Driverslist.new
  end

  # GET /driverslists/1/edit
  def edit
  end

  # POST /driverslists
  # POST /driverslists.json
  def create
    @driverslist = Driverslist.new(driverslist_params)

    respond_to do |format|
      if @driverslist.save
        format.html { redirect_to @driverslist, notice: 'Driverslist was successfully created.' }
        format.json { render :show, status: :created, location: @driverslist }
      else
        format.html { render :new }
        format.json { render json: @driverslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driverslists/1
  # PATCH/PUT /driverslists/1.json
  def update
    respond_to do |format|
      if @driverslist.update(driverslist_params)
        format.html { redirect_to @driverslist, notice: 'Driverslist was successfully updated.' }
        format.json { render :show, status: :ok, location: @driverslist }
      else
        format.html { render :edit }
        format.json { render json: @driverslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driverslists/1
  # DELETE /driverslists/1.json
  def destroy
    @driverslist.destroy
    respond_to do |format|
      format.html { redirect_to driverslists_url, notice: 'Driverslist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driverslist
      @driverslist = Driverslist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driverslist_params
      params.require(:driverslist).permit(:name)
    end
end
