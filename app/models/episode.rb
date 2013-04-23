# encoding: utf-8
class Episode < ActiveRecord::Base
  before_save :get_permalink, :get_id_media
  #Association
  belongs_to :movie
  belongs_to :server
  has_many :feedbacks
  #attr_accessible
  attr_accessible :name, :link, :movie_id, :server_id

  #Validation
  validates_presence_of :name, :link, :movie_id, :server_id, :message => "không được bỏ trống"
  
  # Function
  def movie_name
    Movie.find(movie_id).name if movie_id
  end
  
  def movie_name=(name)
    self.movie_id = Movie.find_or_create_by_name(name).id unless name.blank?
  end
  
  def get_permalink
    self.permalink = self.name.to_vnlink
  end
  
  def get_id_media
    if self.link.include?("youtu")
      html = Nokogiri::HTML(open(self.link.to_s), nil, 'utf-8')
      img = html.xpath("//meta[@property='og:image']/@content").to_s
      url = img.split("vi/")
      url1 = url[1].split("/")
      self.id_media = url1[0]
    else
      self.id_media = ""
    end
  end
end
