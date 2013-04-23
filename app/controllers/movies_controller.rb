class MoviesController < ApplicationController
  def index
    @movies = Movie.where("name like ?", "%#{params[:q]}%")
    
    respond_to do |wants|
      wants.html
      wants.js
    end
  end
  
  def detail
    @movie = Movie.find(params[:id])
    if @movie.episodes.count > 0
      @e1 = @movie.episodes.first
    end
  end
  
  def trailer
    @movie = Movie.find(params[:id])
    @movie_random = Movie.where(:hot => true).order("random()").limit(12)
  end
end
