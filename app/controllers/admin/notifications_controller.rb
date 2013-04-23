# encoding: utf-8
class Admin::NotificationsController < AdminController
  # GET /admin/notifications
  # GET /admin/notifications.json
  def index
    @stay_in = "Danh Mục Thông Báo"
    @admin_notifications = Notification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_notifications }
    end
  end

  # GET /admin/notifications/1
  # GET /admin/notifications/1.json
  def show
    @stay_in = "Chi Tiết Thông Báo"
    @admin_notification = Notification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_notification }
    end
  end

  # GET /admin/notifications/new
  # GET /admin/notifications/new.json
  def new
    @stay_in = "Thêm Mới Thông Báo"
    @admin_notification = Notification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_notification }
    end
  end

  # GET /admin/notifications/1/edit
  def edit
    @stay_in = "Chỉnh Sửa Thông Báo"
    @admin_notification = Notification.find(params[:id])
  end

  # POST /admin/notifications
  # POST /admin/notifications.json
  def create
    @stay_in = "Thêm Mới Thông Báo"
    @admin_notification = Notification.new(params[:notification])

    respond_to do |format|
      if @admin_notification.save
        format.html { redirect_to admin_notification_path(@admin_notification), notice: 'Thêm thông báo thành công.' }
        format.json { render json: @admin_notification, status: :created, location: @admin_notification }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/notifications/1
  # PUT /admin/notifications/1.json
  def update
    @stay_in = "Chỉnh Sửa Thông Báo"
    @admin_notification = Notification.find(params[:id])

    respond_to do |format|
      if @admin_notification.update_attributes(params[:admin_notification])
        format.html { redirect_to admin_notification_path(@admin_notification), notice: 'Sửa thông báo thành công.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/notifications/1
  # DELETE /admin/notifications/1.json
  def destroy
    @admin_notification = Notification.find(params[:id])
    @admin_notification.destroy

    respond_to do |format|
      format.html { redirect_to admin_notifications_url }
      format.json { head :no_content }
    end
  end
end
