# encoding: utf-8
class AdminController < ApplicationController
  protect_from_forgery
  before_filter :get_active, :check_admin, :check_admin

  def get_active
    active = "class=active"
    case controller_name
    when "episodes"
      @a_episodes = active
    when "categories"
      @a_categories = active
    when "servers"
      @a_servers = active
    when "countries"
      @a_countries = active
    when "movie_makers"
      @a_movie_makers = active
    when "notifications"
      @a_notifications = active
    else
      @a_movies = active
    end
  end

  def check_admin
    if user_signed_in? && current_user.role == "a" then
      "/admin"
    elsif user_signed_in? && current_user.role == "u"
      "/"
    else
      authenticate_user!
    end
  end

  protected

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "admin"
    end
  end
end
