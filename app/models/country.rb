# encoding: utf-8
class Country < ActiveRecord::Base
  before_save :get_permalink
  
  #Accessible
  attr_accessible :name
  
  #Relationship
  has_many :artists
  has_many :movies
  
  #Validation
  validates_presence_of :name, :message => "không được để trống"
  validates_uniqueness_of :name, :message => "đã tồn tại"
  
  #Function
  def get_permalink
    self.permalink = self.name.to_vnlink
  end
end
