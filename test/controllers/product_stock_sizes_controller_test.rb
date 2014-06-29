require 'test_helper'

class ProductStockSizesControllerTest < ActionController::TestCase
  setup do
    @product_stock_size = product_stock_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_stock_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_stock_size" do
    assert_difference('ProductStockSize.count') do
      post :create, product_stock_size: { color: @product_stock_size.color, product_id: @product_stock_size.product_id, size: @product_stock_size.size, stock: @product_stock_size.stock }
    end

    assert_redirected_to product_stock_size_path(assigns(:product_stock_size))
  end

  test "should show product_stock_size" do
    get :show, id: @product_stock_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_stock_size
    assert_response :success
  end

  test "should update product_stock_size" do
    patch :update, id: @product_stock_size, product_stock_size: { color: @product_stock_size.color, product_id: @product_stock_size.product_id, size: @product_stock_size.size, stock: @product_stock_size.stock }
    assert_redirected_to product_stock_size_path(assigns(:product_stock_size))
  end

  test "should destroy product_stock_size" do
    assert_difference('ProductStockSize.count', -1) do
      delete :destroy, id: @product_stock_size
    end

    assert_redirected_to product_stock_sizes_path
  end
end
