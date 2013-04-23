XVSNikMovie::Application.routes.draw do
  devise_for :users

  root :to => "pages#home"

  resources :episodes do
    get :autocomplete_movie_name, :on => :collection
  end

  namespace :admin do
    resources :movies
    resources :episodes
    resources :categories
    resources :artists
    resources :servers
    resources :movie_makers
    resources :countries
    resources :notifications
  end
  get "/admin" => "admin/movies#index"

  get "get_actors" => "artists#get_actors"
  get "get_directors" => "artists#get_directors"
  get "get_categories" => "categories#index"
  get "get_servers" => "servers#index"

  match "the-loai-phim-:id/:permalink" => "categories#detail", :as => "category_detail"
  match "quoc-gia-:id/:permalink" => "countries#detail", :as => "country_detail"
  match "dien-vien-:id/:permalink" => "artists#actor_detail", :as => "actor_detail"
  match "dao-dien-:id/:permalink" => "artists#director_detail", :as => "director_detail"
  match "thong-tin-phim-:id/:permalink" => "movies#detail", :as => "movie_detail"
  match "xem-trailer-phim-:id/:permalink" => "movies#trailer", :as => "movie_trailer"
  match "xem-phim-:id/:permalink" => "episodes#detail", :as => "episode_detail"

  match "tim-kiem" => "search#main_search", :as => "main_search"
  match "phim-dien-anh-xem-nhieu" => "search#top_review_movie", :as => "top_review_movie"
  match "phim-bo-duoc-xem-nhieu" => "search#top_review_tv", :as => "top_review_tv"
  match "phim-dang-duoc-chieu-rap" => "search#m_has_shown", :as => "m_has_shown"
  match "phim-hot" => "search#m_hot", :as => "m_hot"
  match "phim-moi" => "search#new_m", :as => "new_m"
  match "phim-bo" => "search#m_tv", :as => "m_tv"
  match "phim-duoc-xem-nhieu" => "search#most_review", :as => "most_review"
  match "phim-dien-anh-moi-cap-nhat" => "search#ms_new_updated", :as => "ms_new_updated"
  match "phim-bo-moi-cap-nhat" => "search#tv_new_updated", :as => "tv_new_updated"
  match "bao-link-hong/:id-:permalink" => "feedbacks#notice_error_link", :as => 'notice_error_link'
end