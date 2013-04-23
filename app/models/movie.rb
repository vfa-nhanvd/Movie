# encoding: utf-8
class Movie < ActiveRecord::Base
  before_save :get_permalink, :get_id_media
  image_accessor :image
  # include Tire::Model::Search
  # include Tire::Model::Callbacks
  #Association
  has_many :episodes
  belongs_to :country
  belongs_to :movie_maker
  has_many :movie_actors
  has_many :actors, :class_name => "Artist", :through => :movie_actors
  has_many :movie_directors
  has_many :directors, :class_name => "Artist", :through => :movie_directors
  has_many :movie_categories
  has_many :categories, :through => :movie_categories
  has_many :movie_servers
  has_many :servers, :through => :movie_servers
  
  #Accessible
  attr_reader :actor_tokens, :director_tokens, :category_tokens, :server_tokens
  attr_accessible :name, :original_name, :kind, :info, :hot, :country_id, :image, :release_date, :premiere_date, :actor_tokens, :director_tokens, :category_tokens, :server_tokens, :link_trailer, :length, :movie_maker_id, :has_shown 
  
  #Validates
  validates_presence_of :name, :original_name, :link_trailer, :info, :image, :message => "không được bỏ trống"
  validates_uniqueness_of :name, :original_name, :link_trailer, :message => "đã tồn tại"
  
  # tire.mapping do
    # indexes :id, :name => 'string', :index => :not_analyzed
  # end
  
  #Definition
  Kind = {
    "a" => "Phim Điện Ảnh",
    "b" => "Phim Bộ"
  }
  
  #Function
  def actor_tokens=(ids)
    self.actor_ids = ids.split(",")
  end

  def director_tokens=(ids)
    self.director_ids = ids.split(",")
  end

  def category_tokens=(ids)
    self.category_ids = ids.split(",")
  end

  def server_tokens=(ids)
    self.server_ids = ids.split(",")
  end
  
  def get_permalink
    self.permalink = self.name.to_vnlink
  end
  
  # def self.search(params)
    # tire.search(:load => true) do
      # query { string params[:query], :default_operator => "AND" } if params[:query].present?
    # end
  # end
  
  def get_id_media
    if self.link_trailer.include?("youtu")
      html = Nokogiri::HTML(open(self.link_trailer.to_s), nil, 'utf-8')
      img = html.xpath("//meta[@property='og:image']/@content").to_s
      url = img.split("vi/")
      url1 = url[1].split("/")
      self.id_media = url1[0]
    else
      self.id_media = ""
    end
  end
end
