class ArtistsController < ApplicationController
  def get_directors
    @directors = Artist.where("name like ? and kind = ?", "%#{params[:q]}%", "0")

    respond_to do |wants|
      wants.html
      wants.json { render :json => @directors.map(&:attributes) }
    end
  end

  def get_actors
    @actors = Artist.where("name like ? and kind = ?", "%#{params[:q]}%", "1")

    respond_to do |wants|
      wants.html
      wants.json { render :json => @actors.map(&:attributes) }
    end
  end

  def actor_detail
    @actor = Artist.find(params[:id])
    @a_movie = []
    MovieActor.where(:actor_id => @actor.id).each do |ma|
      @a_movie << ma.movie
    end
    @a_movie = @a_movie.paginate(:page => params[:trang], :per_page => 10)
  end
  
  def director_detail
    @director = Artist.find(params[:id])
    @d_movie = []
    MovieDirector.where(:director_id => @director.id).each do |md|
      @d_movie << md.movie
    end
    @d_movie = @d_movie.paginate(:page => params[:trang], :per_page => 10)
  end
  
end

