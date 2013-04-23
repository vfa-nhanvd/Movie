class MovieActor < ActiveRecord::Base
  belongs_to :actor, :class_name => "Artist"
  belongs_to :movie
end
