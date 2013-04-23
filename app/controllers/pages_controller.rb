class PagesController < ApplicationController
  def home
    @new_movies = Movie.where(:kind => "a").order("created_at desc").first(16)
    @new_tv = Movie.where(:kind => "b").order("created_at desc").first(16)
    @hot_movies = Movie.where(:hot => true).order("created_at desc").first(4)
  end
end
