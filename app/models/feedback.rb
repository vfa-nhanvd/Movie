# encoding: utf-8
class Feedback < ActiveRecord::Base
  #RelationShip
  belongs_to :episode
  
  #Definition
  Kind = {
    "a" => "báo link hỏng"
  }
end
