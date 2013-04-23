require 'test_helper'

class Admin::ArtistsControllerTest < ActionController::TestCase
  setup do
    @admin_artist = admin_artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_artist" do
    assert_difference('Admin::Artist.count') do
      post :create, admin_artist: {  }
    end

    assert_redirected_to admin_artist_path(assigns(:admin_artist))
  end

  test "should show admin_artist" do
    get :show, id: @admin_artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_artist
    assert_response :success
  end

  test "should update admin_artist" do
    put :update, id: @admin_artist, admin_artist: {  }
    assert_redirected_to admin_artist_path(assigns(:admin_artist))
  end

  test "should destroy admin_artist" do
    assert_difference('Admin::Artist.count', -1) do
      delete :destroy, id: @admin_artist
    end

    assert_redirected_to admin_artists_path
  end
end
