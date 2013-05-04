class ApiController < ApplicationController
  def points
    logger.info params

    @points = LocalPoint.find_by_latlng(params)
    render :json => @points.to_json
  end
end
