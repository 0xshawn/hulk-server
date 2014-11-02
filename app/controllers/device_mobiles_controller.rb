class DeviceMobilesController < ApplicationController
  before_action :set_device_mobile, only: [:show, :edit, :update, :destroy]

  # GET /device_mobiles
  # GET /device_mobiles.json
  def index
    @device_mobiles = DeviceMobile.all
  end

  # GET /device_mobiles/1
  # GET /device_mobiles/1.json
  def show
  end

  # GET /device_mobiles/new
  def new
    @device_mobile = DeviceMobile.new
  end

  # GET /device_mobiles/1/edit
  def edit
  end

  # POST /device_mobiles
  # POST /device_mobiles.json
  def create
    @device_mobile = DeviceMobile.new(device_mobile_params)

    respond_to do |format|
      if @device_mobile.save
        format.html { redirect_to @device_mobile, notice: 'Device mobile was successfully created.' }
        format.json { render :show, status: :created, location: @device_mobile }
      else
        format.html { render :new }
        format.json { render json: @device_mobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_mobiles/1
  # PATCH/PUT /device_mobiles/1.json
  def update
    respond_to do |format|
      if @device_mobile.update(device_mobile_params)
        format.html { redirect_to @device_mobile, notice: 'Device mobile was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_mobile }
      else
        format.html { render :edit }
        format.json { render json: @device_mobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_mobiles/1
  # DELETE /device_mobiles/1.json
  def destroy
    @device_mobile.destroy
    respond_to do |format|
      format.html { redirect_to device_mobiles_url, notice: 'Device mobile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_mobile
      @device_mobile = DeviceMobile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_mobile_params
      params.require(:device_mobile).permit(:platform, :model)
    end
end
