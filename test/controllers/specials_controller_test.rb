require 'test_helper'

class SpecialsControllerTest < ActionController::TestCase
  setup do
    @special = specials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special" do
    assert_difference('Special.count') do
      post :create, special: { description: @special.description, image_name: @special.image_name, image_uid: @special.image_uid, slave: @special.slave, sort: @special.sort, title: @special.title, url: @special.url }
    end

    assert_redirected_to special_path(assigns(:special))
  end

  test "should show special" do
    get :show, id: @special
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special
    assert_response :success
  end

  test "should update special" do
    patch :update, id: @special, special: { description: @special.description, image_name: @special.image_name, image_uid: @special.image_uid, slave: @special.slave, sort: @special.sort, title: @special.title, url: @special.url }
    assert_redirected_to special_path(assigns(:special))
  end

  test "should destroy special" do
    assert_difference('Special.count', -1) do
      delete :destroy, id: @special
    end

    assert_redirected_to specials_path
  end
end
