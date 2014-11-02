require 'test_helper'

class DevicePcsControllerTest < ActionController::TestCase
  setup do
    @device_pc = device_pcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_pcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_pc" do
    assert_difference('DevicePc.count') do
      post :create, device_pc: { brand: @device_pc.brand, cpu: @device_pc.cpu }
    end

    assert_redirected_to device_pc_path(assigns(:device_pc))
  end

  test "should show device_pc" do
    get :show, id: @device_pc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_pc
    assert_response :success
  end

  test "should update device_pc" do
    patch :update, id: @device_pc, device_pc: { brand: @device_pc.brand, cpu: @device_pc.cpu }
    assert_redirected_to device_pc_path(assigns(:device_pc))
  end

  test "should destroy device_pc" do
    assert_difference('DevicePc.count', -1) do
      delete :destroy, id: @device_pc
    end

    assert_redirected_to device_pcs_path
  end
end
