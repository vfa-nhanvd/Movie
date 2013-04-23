# encoding: utf-8
class Admin::ArtistsController < AdminController
  # GET /admin/artists
  # GET /admin/artists.json
  def index
    @stay_in = "Danh Mục Nghệ Sĩ"
    @admin_artists = Artist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_artists }
    end
  end

  # GET /admin/artists/1
  # GET /admin/artists/1.json
  def show
    @stay_in = "Chi Tiết Nghệ Sĩ"
    @admin_artist = Artist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_artist }
    end
  end

  # GET /admin/artists/new
  # GET /admin/artists/new.json
  def new
    @stay_in = "Thêm Mới Nghệ Sĩ"
    @admin_artist = Artist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_artist }
    end
  end

  # GET /admin/artists/1/edit
  def edit
    @stay_in = "Chỉnh Sửa Nghệ Sĩ"
    @admin_artist = Artist.find(params[:id])
  end

  # POST /admin/artists
  # POST /admin/artists.json
  def create
    @stay_in = "Thêm Mới Nghệ Sĩ"
    @admin_artist = Artist.new(params[:artist])

    respond_to do |format|
      if @admin_artist.save
        format.html { redirect_to admin_artist_path(@admin_artist), notice: 'Thêm nghệ sĩ thành công.' }
        format.json { render json: @admin_artist, status: :created, location: @admin_artist }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/artists/1
  # PUT /admin/artists/1.json
  def update
    @stay_in = "Chỉnh Sửa Nghệ Sĩ"
    @admin_artist = Artist.find(params[:id])

    respond_to do |format|
      if @admin_artist.update_attributes(params[:artist])
        format.html { redirect_to admin_artist_path(@admin_artist), notice: 'Sửa nghệ sĩ thành công.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/artists/1
  # DELETE /admin/artists/1.json
  def destroy
    @admin_artist = Artist.find(params[:id])
    @admin_artist.destroy

    respond_to do |format|
      format.html { redirect_to admin_artists_url }
      format.json { head :no_content }
    end
  end

  def get_actors
    @authors = Author.where("name like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @authors.map(&:attributes) }
    end
  end
end
