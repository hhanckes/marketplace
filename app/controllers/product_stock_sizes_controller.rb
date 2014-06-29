class ProductStockSizesController < ApplicationController
  before_action :set_product_stock_size, only: [:show, :edit, :update, :destroy]

  # GET /product_stock_sizes
  # GET /product_stock_sizes.json
  def index
    @product_stock_sizes = ProductStockSize.all
  end

  # GET /product_stock_sizes/1
  # GET /product_stock_sizes/1.json
  def show
  end

  # GET /product_stock_sizes/new
  def new
    @product_stock_size = ProductStockSize.new
  end

  # GET /product_stock_sizes/1/edit
  def edit
  end

  # POST /product_stock_sizes
  # POST /product_stock_sizes.json
  def create
    @product_stock_size = ProductStockSize.new(product_stock_size_params)

    respond_to do |format|
      if @product_stock_size.save
        format.html { redirect_to @product_stock_size, notice: 'Product stock size was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product_stock_size }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_stock_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_stock_sizes/1
  # PATCH/PUT /product_stock_sizes/1.json
  def update
    respond_to do |format|
      if @product_stock_size.update(product_stock_size_params)
        format.html { redirect_to @product_stock_size, notice: 'Product stock size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_stock_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_stock_sizes/1
  # DELETE /product_stock_sizes/1.json
  def destroy
    @product_stock_size.destroy
    respond_to do |format|
      format.html { redirect_to product_stock_sizes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_stock_size
      @product_stock_size = ProductStockSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_stock_size_params
      params.require(:product_stock_size).permit(:product_id, :stock, :size, :color)
    end
end
