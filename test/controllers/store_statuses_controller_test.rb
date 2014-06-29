require 'test_helper'

class StoreStatusesControllerTest < ActionController::TestCase
  setup do
    @store_status = store_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_status" do
    assert_difference('StoreStatus.count') do
      post :create, store_status: { description: @store_status.description, name: @store_status.name }
    end

    assert_redirected_to store_status_path(assigns(:store_status))
  end

  test "should show store_status" do
    get :show, id: @store_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_status
    assert_response :success
  end

  test "should update store_status" do
    patch :update, id: @store_status, store_status: { description: @store_status.description, name: @store_status.name }
    assert_redirected_to store_status_path(assigns(:store_status))
  end

  test "should destroy store_status" do
    assert_difference('StoreStatus.count', -1) do
      delete :destroy, id: @store_status
    end

    assert_redirected_to store_statuses_path
  end
end
