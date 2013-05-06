class GenresLocalPoint < ActiveRecord::Base
  belongs_to :local_point
  belongs_to :genre
  attr_accessible :local_points_id, :genre_id
end
