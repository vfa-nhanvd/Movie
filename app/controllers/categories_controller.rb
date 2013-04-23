class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.where("name like ?", "%#{params[:q]}%")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @categories.map(&:attributes) }
    end
  end
  
  def detail
    @category = Category.find(params[:id])
    @ca_movies = @category.movies.paginate(:page => params[:trang], :per_page => 40)
  end

end
