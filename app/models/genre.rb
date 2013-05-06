class Genre < ActiveRecord::Base
  has_and_belongs_to_many :local_point
  attr_accessible :genre_name
end
