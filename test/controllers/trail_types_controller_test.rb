require 'test_helper'

class TrailTypesControllerTest < ActionController::TestCase
  setup do
    @trail_type = trail_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trail_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trail_type" do
    assert_difference('TrailType.count') do
      post :create, trail_type: { name: @trail_type.name }
    end

    assert_redirected_to trail_type_path(assigns(:trail_type))
  end

  test "should show trail_type" do
    get :show, id: @trail_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trail_type
    assert_response :success
  end

  test "should update trail_type" do
    patch :update, id: @trail_type, trail_type: { name: @trail_type.name }
    assert_redirected_to trail_type_path(assigns(:trail_type))
  end

  test "should destroy trail_type" do
    assert_difference('TrailType.count', -1) do
      delete :destroy, id: @trail_type
    end

    assert_redirected_to trail_types_path
  end
end
