# encoding: utf-8
class Admin::MovieMakersController < AdminController
  # GET /admin/movie_makers
  # GET /admin/movie_makers.json
  def index
    @stay_in = "Danh Mục Hãng Sản Xuất"
    @admin_movie_makers = MovieMaker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_movie_makers }
    end
  end

  # GET /admin/movie_makers/1
  # GET /admin/movie_makers/1.json
  def show
    @stay_in = "Chi Tiết Hãng Sản Xuất"
    @admin_movie_maker = MovieMaker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_movie_maker }
    end
  end

  # GET /admin/movie_makers/new
  # GET /admin/movie_makers/new.json
  def new
    @stay_in = "Thêm Mới Hãng Sản Xuất"
    @admin_movie_maker = MovieMaker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_movie_maker }
    end
  end

  # GET /admin/movie_makers/1/edit
  def edit
    @stay_in = "Chỉnh Sửa Hãng Sản Xuất"
    @admin_movie_maker = MovieMaker.find(params[:id])
  end

  # POST /admin/movie_makers
  # POST /admin/movie_makers.json
  def create
    @stay_in = "Thêm Mới Hãng Sản Xuất"
    @admin_movie_maker = MovieMaker.new(params[:movie_maker])

    respond_to do |format|
      if @admin_movie_maker.save
        format.html { redirect_to admin_movie_maker_path(@admin_movie_maker), notice: 'Thêm hãng sản xuất thành công.' }
        format.json { render json: @admin_movie_maker, status: :created, location: @admin_movie_maker }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_movie_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/movie_makers/1
  # PUT /admin/movie_makers/1.json
  def update
    @stay_in = "Chỉnh Sửa Hãng Sản Xuất"
    @admin_movie_maker = MovieMaker.find(params[:id])

    respond_to do |format|
      if @admin_movie_maker.update_attributes(params[:movie_maker])
        format.html { redirect_to admin_movie_maker_path(@admin_movie_maker), notice: 'Sửa hãng sản xuất thành công.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_movie_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/movie_makers/1
  # DELETE /admin/movie_makers/1.json
  def destroy
    @admin_movie_maker = MovieMaker.find(params[:id])
    @admin_movie_maker.destroy

    respond_to do |format|
      format.html { redirect_to admin_movie_makers_url }
      format.json { head :no_content }
    end
  end
end
