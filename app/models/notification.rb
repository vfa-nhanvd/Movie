# encoding: utf-8
class Notification < ActiveRecord::Base
  #Validation
  validates_presence_of :content, :message => "không được bỏ trống"
end
