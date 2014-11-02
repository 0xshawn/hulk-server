require 'test_helper'

class DeviceMobilesControllerTest < ActionController::TestCase
  setup do
    @device_mobile = device_mobiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_mobiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_mobile" do
    assert_difference('DeviceMobile.count') do
      post :create, device_mobile: { model: @device_mobile.model, platform: @device_mobile.platform }
    end

    assert_redirected_to device_mobile_path(assigns(:device_mobile))
  end

  test "should show device_mobile" do
    get :show, id: @device_mobile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_mobile
    assert_response :success
  end

  test "should update device_mobile" do
    patch :update, id: @device_mobile, device_mobile: { model: @device_mobile.model, platform: @device_mobile.platform }
    assert_redirected_to device_mobile_path(assigns(:device_mobile))
  end

  test "should destroy device_mobile" do
    assert_difference('DeviceMobile.count', -1) do
      delete :destroy, id: @device_mobile
    end

    assert_redirected_to device_mobiles_path
  end
end
