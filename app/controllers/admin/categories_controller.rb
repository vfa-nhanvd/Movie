# encoding: utf-8
class Admin::CategoriesController < AdminController
  # GET /admin/categories
  # GET /admin/categories.json
  def index
    @stay_in = "Danh Mục Thể Loại Phim"
    @admin_categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_categories }
    end
  end

  # GET /admin/categories/1
  # GET /admin/categories/1.json
  def show
    @stay_in = "Chi Tiết Nghệ Sĩ"
    @admin_category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_category }
    end
  end

  # GET /admin/categories/new
  # GET /admin/categories/new.json
  def new
    @stay_in = "Thêm Mới Nghệ Sĩ"
    @admin_category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_category }
    end
  end

  # GET /admin/categories/1/edit
  def edit
    @stay_in = "Chỉnh Sửa Nghệ Sĩ"
    @admin_category = Category.find(params[:id])
  end

  # POST /admin/categories
  # POST /admin/categories.json
  def create
    @stay_in = "Thêm Mới Nghệ Sĩ"
    @admin_category = Category.new(params[:category])

    respond_to do |format|
      if @admin_category.save
        format.html { redirect_to admin_category_path(@admin_category), notice: 'Thêm thể loại thành công.' }
        format.json { render json: @admin_category, status: :created, location: @admin_category }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/categories/1
  # PUT /admin/categories/1.json
  def update
    @stay_in = "Chỉnh Sửa Nghệ Sĩ"
    @admin_category = Category.find(params[:id])

    respond_to do |format|
      if @admin_category.update_attributes(params[:category])
        format.html { redirect_to admin_category_path(@admin_category), notice: 'Sửa thể loại thành công.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/categories/1
  # DELETE /admin/categories/1.json
  def destroy
    @admin_category = Category.find(params[:id])
    @admin_category.destroy

    respond_to do |format|
      format.html { redirect_to admin_categories_url }
      format.json { head :no_content }
    end
  end
end
