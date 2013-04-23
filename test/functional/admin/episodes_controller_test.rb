require 'test_helper'

class Admin::EpisodesControllerTest < ActionController::TestCase
  setup do
    @admin_episode = admin_episodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_episodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_episode" do
    assert_difference('Admin::Episode.count') do
      post :create, admin_episode: {  }
    end

    assert_redirected_to admin_episode_path(assigns(:admin_episode))
  end

  test "should show admin_episode" do
    get :show, id: @admin_episode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_episode
    assert_response :success
  end

  test "should update admin_episode" do
    put :update, id: @admin_episode, admin_episode: {  }
    assert_redirected_to admin_episode_path(assigns(:admin_episode))
  end

  test "should destroy admin_episode" do
    assert_difference('Admin::Episode.count', -1) do
      delete :destroy, id: @admin_episode
    end

    assert_redirected_to admin_episodes_path
  end
end
