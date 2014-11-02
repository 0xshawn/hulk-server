class DevicePcsController < ApplicationController
  before_action :set_device_pc, only: [:show, :edit, :update, :destroy]

  # GET /device_pcs
  # GET /device_pcs.json
  def index
    @device_pcs = DevicePc.all
  end

  # GET /device_pcs/1
  # GET /device_pcs/1.json
  def show
  end

  # GET /device_pcs/new
  def new
    @device_pc = DevicePc.new
  end

  # GET /device_pcs/1/edit
  def edit
  end

  # POST /device_pcs
  # POST /device_pcs.json
  def create
    @device_pc = DevicePc.new(device_pc_params)

    respond_to do |format|
      if @device_pc.save
        format.html { redirect_to @device_pc, notice: 'Device pc was successfully created.' }
        format.json { render :show, status: :created, location: @device_pc }
      else
        format.html { render :new }
        format.json { render json: @device_pc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_pcs/1
  # PATCH/PUT /device_pcs/1.json
  def update
    respond_to do |format|
      if @device_pc.update(device_pc_params)
        format.html { redirect_to @device_pc, notice: 'Device pc was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_pc }
      else
        format.html { render :edit }
        format.json { render json: @device_pc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_pcs/1
  # DELETE /device_pcs/1.json
  def destroy
    @device_pc.destroy
    respond_to do |format|
      format.html { redirect_to device_pcs_url, notice: 'Device pc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_pc
      @device_pc = DevicePc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_pc_params
      params.require(:device_pc).permit(:brand, :cpu)
    end
end
