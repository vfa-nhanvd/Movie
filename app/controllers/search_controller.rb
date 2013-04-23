class SearchController < ApplicationController
  
  def main_search
    # @movies = Movie.search(params)
    @movies = Movie.where("permalink LIKE ? or original_name LIKE ?", "%#{sanitize_for_to_param_with_vietnamese(params[:q])}%","%#{sanitize_for_to_param_with_vietnamese(params[:q])}%").order("plays desc").page
  end
  
  # Phim dien anh xem nhieu
  def top_review_movie
    @top_movie = Movie.where(:kind => "a").order("plays desc").page
  end

  # Phim bo xem nhieu
  def top_review_tv
    @top_tv = Movie.where(:kind => "b").order("plays desc").page
  end

  # Phim dang chieu rap
  def m_has_shown
    @m_has_shown = Movie.where(:has_shown => true).order("created_at desc").page
  end
 
  # Phim hot
  def m_hot
    @m_hot = Movie.where(:hot => true).order("created_at desc").page
  end
  
  # Phim moi
  def new_m
    @nm = Movie.order("created_at desc").page
  end
  
  # Phim xem nhieu
  def most_review
    @mr = Movie.order("plays desc").page
  end
  
  # Phim bo
  def m_tv
    @m_tv = Movie.where(:kind => "b").order("created_at desc").page
  end
  
  # Phim dien anh moi cap nhat
  def ms_new_updated
    @msn = Movie.where(:kind => "a").order("created_at desc").page
  end
  
  # Phim bo moi cap nhat
  def tv_new_updated
    @tvn = Movie.where(:kind => "b").order("created_at desc").page
  end
  
end
