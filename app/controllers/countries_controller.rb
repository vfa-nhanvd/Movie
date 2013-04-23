class CountriesController < ApplicationController
  def detail
    @country = Country.find(params[:id])
    @co_movies = @country.movies.paginate(:page => params[:trang], :per_page => 40)
  end
end
