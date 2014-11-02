require 'test_helper'

class DeviceLaptopsControllerTest < ActionController::TestCase
  setup do
    @device_laptop = device_laptops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_laptops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_laptop" do
    assert_difference('DeviceLaptop.count') do
      post :create, device_laptop: { brand: @device_laptop.brand, cpu: @device_laptop.cpu, disk: @device_laptop.disk, graphics: @device_laptop.graphics, ram: @device_laptop.ram }
    end

    assert_redirected_to device_laptop_path(assigns(:device_laptop))
  end

  test "should show device_laptop" do
    get :show, id: @device_laptop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_laptop
    assert_response :success
  end

  test "should update device_laptop" do
    patch :update, id: @device_laptop, device_laptop: { brand: @device_laptop.brand, cpu: @device_laptop.cpu, disk: @device_laptop.disk, graphics: @device_laptop.graphics, ram: @device_laptop.ram }
    assert_redirected_to device_laptop_path(assigns(:device_laptop))
  end

  test "should destroy device_laptop" do
    assert_difference('DeviceLaptop.count', -1) do
      delete :destroy, id: @device_laptop
    end

    assert_redirected_to device_laptops_path
  end
end
