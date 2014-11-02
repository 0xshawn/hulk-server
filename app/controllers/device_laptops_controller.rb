class DeviceLaptopsController < ApplicationController
  before_action :set_device_laptop, only: [:show, :edit, :update, :destroy]

  # GET /device_laptops
  # GET /device_laptops.json
  def index
    @device_laptops = DeviceLaptop.all
  end

  # GET /device_laptops/1
  # GET /device_laptops/1.json
  def show
  end

  # GET /device_laptops/new
  def new
    @device_laptop = DeviceLaptop.new
  end

  # GET /device_laptops/1/edit
  def edit
  end

  # POST /device_laptops
  # POST /device_laptops.json
  def create
    @device_laptop = DeviceLaptop.new(device_laptop_params)

    respond_to do |format|
      if @device_laptop.save
        format.html { redirect_to @device_laptop, notice: 'Device laptop was successfully created.' }
        format.json { render :show, status: :created, location: @device_laptop }
      else
        format.html { render :new }
        format.json { render json: @device_laptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_laptops/1
  # PATCH/PUT /device_laptops/1.json
  def update
    respond_to do |format|
      if @device_laptop.update(device_laptop_params)
        format.html { redirect_to @device_laptop, notice: 'Device laptop was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_laptop }
      else
        format.html { render :edit }
        format.json { render json: @device_laptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_laptops/1
  # DELETE /device_laptops/1.json
  def destroy
    @device_laptop.destroy
    respond_to do |format|
      format.html { redirect_to device_laptops_url, notice: 'Device laptop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_laptop
      @device_laptop = DeviceLaptop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_laptop_params
      params.require(:device_laptop).permit(:brand, :cpu, :ram, :disk, :graphics)
    end
end
