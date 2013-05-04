class IndexController < ApplicationController
  def index
    @local_points = LocalPoint.all
    render :layout => 'with_google_maps'
  end
end
