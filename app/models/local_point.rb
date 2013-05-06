class LocalPoint < ActiveRecord::Base
  acts_as_paranoid # 論理削除

  attr_accessible :point_name, :address, :latitude, :longitude, :description, :site_url, :genres, :genre_ids, :instruments
  has_many :genres_local_points
  has_many :genre, :through => :genres_local_points
  belongs_to :level

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
      nlat, slat, nlng, slng).order('updated_at desc').limit(100)
  end
end
