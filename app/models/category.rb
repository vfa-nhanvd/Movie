# encoding: utf-8
class Category < ActiveRecord::Base
  before_create :get_permalink
  
  #Relationships
  has_many :movie_categories
  has_many :movies, :through => :movie_categories
  
  #Accessible
  attr_accessible :name
  
  #Validation
  validates_presence_of :name, :message => "không được bỏ trống"
  validates_uniqueness_of :name, :message => "đã tồn tại"
  
  def get_permalink
    self.permalink = self.name.to_vnlink
  end
end
