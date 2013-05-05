class IndexController < ApplicationController
  def index
    @local_points = LocalPoint.all
  end
end
