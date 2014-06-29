class StoreStatusesController < ApplicationController
  before_action :set_store_status, only: [:show, :edit, :update, :destroy]

  # GET /store_statuses
  # GET /store_statuses.json
  def index
    @store_statuses = StoreStatus.all
  end

  # GET /store_statuses/1
  # GET /store_statuses/1.json
  def show
  end

  # GET /store_statuses/new
  def new
    @store_status = StoreStatus.new
  end

  # GET /store_statuses/1/edit
  def edit
  end

  # POST /store_statuses
  # POST /store_statuses.json
  def create
    @store_status = StoreStatus.new(store_status_params)

    respond_to do |format|
      if @store_status.save
        format.html { redirect_to @store_status, notice: 'Store status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @store_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @store_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_statuses/1
  # PATCH/PUT /store_statuses/1.json
  def update
    respond_to do |format|
      if @store_status.update(store_status_params)
        format.html { redirect_to @store_status, notice: 'Store status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @store_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_statuses/1
  # DELETE /store_statuses/1.json
  def destroy
    @store_status.destroy
    respond_to do |format|
      format.html { redirect_to store_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_status
      @store_status = StoreStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_status_params
      params.require(:store_status).permit(:name, :description)
    end
end
