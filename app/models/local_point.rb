class LocalPoint < ActiveRecord::Base
  attr_accessible :point_name, :address, :latitude, :longitude, :description, :site_url

  # 指定した緯度経度の範囲内にあるpointを取得
  def self.find_by_latlng(params)
    nlat = params[:nlat]
    slat = params[:slat]
    nlng = params[:nlng]
    slng = params[:slng]

    return self.where(
      ["latitude  >= ?",
       "latitude  <= ?",
       "longitude >= ?",
       "longitude <= ?"].join(' and '),
      nlat, slat, nlng, slng)
  end
end
