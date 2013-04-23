# encoding: utf-8
class Artist < ActiveRecord::Base
  before_save :get_permalink
  image_accessor :avatar
  
  #Accessible
  attr_accessible :name, :avatar, :kind, :bio, :hot, :country_id 
  
  #Relationship
  belongs_to :country
  has_many :movie_actors
  has_many :movie_directors
   
  #Definition
  Kind = {
    "0"=> "Đạo diễn",
    "1"=> "Diễn viên",
  }
  
  #Validation
  validates_presence_of :name, :kind, :message => "không được bỏ trống"
  
  #Function
  def actor
    self.where("kind = ?", "0")
    self.save
  end
  
  def director
    self.where(:kind => "1")
    self.save
  end
    
  def get_permalink
    self.permalink = self.name.to_vnlink
  end
end
