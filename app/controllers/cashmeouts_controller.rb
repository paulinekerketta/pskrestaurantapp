class CashmeoutsController < ApplicationController
  before_action :set_cashmeout, only: [:show, :edit, :update, :destroy]

  # GET /cashmeouts
  # GET /cashmeouts.json
  def index
    @cashmeouts = Cashmeout.all
  end

  # GET /cashmeouts/1
  # GET /cashmeouts/1.json
  def show
  end

  # GET /cashmeouts/new
  def new
    @cashmeout = Cashmeout.new
  end

  # GET /cashmeouts/1/edit
  def edit
  end

  # POST /cashmeouts
  # POST /cashmeouts.json
  def create
    @cashmeout = Cashmeout.new(cashmeout_params)

    respond_to do |format|
      if @cashmeout.save
        format.html { redirect_to @cashmeout, notice: 'Cashmeout was successfully created.' }
        format.json { render :show, status: :created, location: @cashmeout }
      else
        format.html { render :new }
        format.json { render json: @cashmeout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashmeouts/1
  # PATCH/PUT /cashmeouts/1.json
  def update
    respond_to do |format|
      if @cashmeout.update(cashmeout_params)
        format.html { redirect_to @cashmeout, notice: 'Cashmeout was successfully updated.' }
        format.json { render :show, status: :ok, location: @cashmeout }
      else
        format.html { render :edit }
        format.json { render json: @cashmeout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashmeouts/1
  # DELETE /cashmeouts/1.json
  def destroy
    @cashmeout.destroy
    respond_to do |format|
      format.html { redirect_to cashmeouts_url, notice: 'Cashmeout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashmeout
      @cashmeout = Cashmeout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cashmeout_params
      params.require(:cashmeout).permit(:date, :name, :drop, :sub_total, :total_delivery, :del_charge, :extra, :toget)
    end
end
