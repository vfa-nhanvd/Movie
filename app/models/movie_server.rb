class MovieServer < ActiveRecord::Base
  belongs_to :movie
  belongs_to :server
end
