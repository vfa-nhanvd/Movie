# encoding: utf-8
class Admin::ServersController < AdminController
  # GET /admin/servers
  # GET /admin/servers.json
  def index
    @stay_in = "Danh Mục Server"
    @admin_servers = Server.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_servers }
    end
  end

  # GET /admin/servers/1
  # GET /admin/servers/1.json
  def show
    @stay_in = "Chi Tiết Server"
    @admin_server = Server.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_server }
    end
  end

  # GET /admin/servers/new
  # GET /admin/servers/new.json
  def new
    @stay_in = "Thêm Mới Server"
    @admin_server = Server.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_server }
    end
  end

  # GET /admin/servers/1/edit
  def edit
    @stay_in = "Chỉnh Sửa Server"
    @admin_server = Server.find(params[:id])
  end

  # POST /admin/servers
  # POST /admin/servers.json
  def create
    @stay_in = "Thêm Mới Server"
    @admin_server = Server.new(params[:server])

    respond_to do |format|
      if @admin_server.save
        format.html { redirect_to admin_server_path(@admin_server), notice: 'Thêm server thành công.' }
        format.json { render json: @admin_server, status: :created, location: @admin_server }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/servers/1
  # PUT /admin/servers/1.json
  def update
    @stay_in = "Chỉnh Sửa Server"
    @admin_server = Server.find(params[:id])

    respond_to do |format|
      if @admin_server.update_attributes(params[:server])
        format.html { redirect_to admin_server_path(@admin_server), notice: 'Sửa server thành công.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/servers/1
  # DELETE /admin/servers/1.json
  def destroy
    @admin_server = Server.find(params[:id])
    @admin_server.destroy

    respond_to do |format|
      format.html { redirect_to admin_servers_url }
      format.json { head :no_content }
    end
  end
end
