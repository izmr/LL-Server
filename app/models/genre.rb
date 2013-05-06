class Genre < ActiveRecord::Base
  has_many :genres_local_points
  has_many :local_point, :through => :genres_local_points
  attr_accessible :genre_name
end
