require 'test_helper'

class Admin::MovieMakersControllerTest < ActionController::TestCase
  setup do
    @admin_movie_maker = admin_movie_makers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_movie_makers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_movie_maker" do
    assert_difference('Admin::MovieMaker.count') do
      post :create, admin_movie_maker: {  }
    end

    assert_redirected_to admin_movie_maker_path(assigns(:admin_movie_maker))
  end

  test "should show admin_movie_maker" do
    get :show, id: @admin_movie_maker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_movie_maker
    assert_response :success
  end

  test "should update admin_movie_maker" do
    put :update, id: @admin_movie_maker, admin_movie_maker: {  }
    assert_redirected_to admin_movie_maker_path(assigns(:admin_movie_maker))
  end

  test "should destroy admin_movie_maker" do
    assert_difference('Admin::MovieMaker.count', -1) do
      delete :destroy, id: @admin_movie_maker
    end

    assert_redirected_to admin_movie_makers_path
  end
end
