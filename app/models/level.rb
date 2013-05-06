class Level < ActiveRecord::Base
  has_many        :local_point
  attr_accessible :level_name
end
