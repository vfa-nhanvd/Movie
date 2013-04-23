# encoding: utf-8
class Admin::MoviesController < AdminController
  layout "admin"
  # GET /admin/movies
  # GET /admin/movies.json
  def index
    @stay_in = "Danh Mục Phim"
    @admin_movies = Movie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_movies }
    end
  end

  # GET /admin/movies/1
  # GET /admin/movies/1.json
  def show
    @stay_in = "Chi Tiết Phim"
    @admin_movie = Movie.find(params[:id])

    respond_to do |format|
      format.html { admin_movie_path(@admin_movie) }
      format.json { render json: @admin_movie }
    end
  end

  # GET /admin/movies/new
  # GET /admin/movies/new.json
  def new
    @stay_in = "Thêm Mới Phim"
    @admin_movie = Movie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_movie }
    end
  end

  # GET /admin/movies/1/edit
  def edit
    @stay_in = "Chỉnh Sửa Phim"
    @admin_movie = Movie.find(params[:id])
  end

  # POST /admin/movies
  # POST /admin/movies.json
  def create
    @stay_in = "Thêm Mới Phim"
    @admin_movie = Movie.new(params[:movie])

    respond_to do |format|
      if @admin_movie.save
        format.html { redirect_to admin_movie_path(@admin_movie), notice: 'Thêm phim thành công.' }
        format.json { render json: @admin_movie, status: :created, location: @admin_movie }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/movies/1
  # PUT /admin/movies/1.json
  def update
    @stay_in = "Chỉnh Sửa Phim"
    @admin_movie = Movie.find(params[:id])

    respond_to do |format|
      if @admin_movie.update_attributes(params[:movie])
        format.html { redirect_to admin_movie_path(@admin_movie), notice: 'Sửa phim thành công.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/movies/1
  # DELETE /admin/movies/1.json
  def destroy
    @admin_movie = Movie.find(params[:id])
    @admin_movie.destroy

    respond_to do |format|
      format.html { redirect_to admin_movies_url }
      format.json { head :no_content }
    end
  end
end
