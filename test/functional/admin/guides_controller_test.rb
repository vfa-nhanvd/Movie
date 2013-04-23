require 'test_helper'

class Admin::GuidesControllerTest < ActionController::TestCase
  setup do
    @admin_guide = admin_guides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_guides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_guide" do
    assert_difference('Admin::Guide.count') do
      post :create, admin_guide: {  }
    end

    assert_redirected_to admin_guide_path(assigns(:admin_guide))
  end

  test "should show admin_guide" do
    get :show, id: @admin_guide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_guide
    assert_response :success
  end

  test "should update admin_guide" do
    put :update, id: @admin_guide, admin_guide: {  }
    assert_redirected_to admin_guide_path(assigns(:admin_guide))
  end

  test "should destroy admin_guide" do
    assert_difference('Admin::Guide.count', -1) do
      delete :destroy, id: @admin_guide
    end

    assert_redirected_to admin_guides_path
  end
end
