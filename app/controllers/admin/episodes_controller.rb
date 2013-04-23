# encoding: utf-8
class Admin::EpisodesController < AdminController
  # GET /admin/episodes
  # GET /admin/episodes.json
  def index
    @stay_in = "Danh Mục Tập Phim"
    @admin_episodes = Episode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_episodes }
    end
  end

  # GET /admin/episodes/1
  # GET /admin/episodes/1.json
  def show
    @stay_in = "Chi Tiết Tập Phim"
    @admin_episode = Episode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_episode }
    end
  end

  # GET /admin/episodes/new
  # GET /admin/episodes/new.json
  def new
    @stay_in = "Thêm Mới Tập Phim"
    @admin_episode = Episode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_episode }
    end
  end

  # GET /admin/episodes/1/edit
  def edit
    @stay_in = "Chỉnh Sửa Tập Phim"
    @admin_episode = Episode.find(params[:id])
  end

  # POST /admin/episodes
  # POST /admin/episodes.json
  def create
    @stay_in = "Thêm Mới Tập Phim"
    @admin_episode = Episode.new(params[:episode])

    respond_to do |format|
      if @admin_episode.save
        format.html { redirect_to admin_episode_path(@admin_episode), notice: 'Thêm tập phim thành công.' }
        format.json { render json: @admin_episode, status: :created, location: @admin_episode }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/episodes/1
  # PUT /admin/episodes/1.json
  def update
    @stay_in = "Chỉnh Sửa Tập Phim"
    @admin_episode = Episode.find(params[:id])

    respond_to do |format|
      if @admin_episode.update_attributes(params[:episode])
        format.html { redirect_to admin_episode_path(@admin_episode), notice: 'Sửa tập phim thành công.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/episodes/1
  # DELETE /admin/episodes/1.json
  def destroy
    @admin_episode = Episode.find(params[:id])
    @admin_episode.destroy

    respond_to do |format|
      format.html { redirect_to admin_episodes_url }
      format.json { head :no_content }
    end
  end
end
