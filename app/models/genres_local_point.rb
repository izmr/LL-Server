class GenresLocalPoint < ActiveRecord::Base
  belongs_to :local_point
  belongs_to :genre
end
