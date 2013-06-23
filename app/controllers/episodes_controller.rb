class EpisodesController < ApplicationController
  def detail
    @episode = Episode.find(params[:id])
    if @episode.movie
      @movie = Movie.find(@episode.movie.id)
      
      unless session["episode_#{params[:id]}"]
        session["episode_#{params[:id]}"] = "episode_#{params[:id]}"
        @movie.plays += 1
        @movie.save
      end
    end
    @movie_random = Movie.where(:hot => true).order("ran()").limit(12)
  end
  
end
