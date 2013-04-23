# encoding: utf-8
class MovieMaker < ActiveRecord::Base
  before_save :get_permalink
  #Association
  has_many :movies
  
  #Accessible
  attr_accessible :name
  
  #Validation
  validates_presence_of :name, :message => "không được để trống"
  validates_uniqueness_of :name, :message => "đã tồn tại"
  
  #Function
  def get_permalink
    self.permalink = self.name.to_vnlink
  end
end
