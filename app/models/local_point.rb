require 'uri'

class LocalPoint < ActiveRecord::Base
  acts_as_paranoid # 論理削除

  validates :point_name, :presence => true
  validates :address, :presence => true
  validates :site_url, {
    :allow_blank => true,
    :format => URI::regexp(%w(http https))
  }

  attr_accessible :point_name, :address, :latitude, :longitude, :description, :site_url, :genres, :genre_ids, :instruments
  has_many :genres_local_points
  has_many :genre, :through => :genres_local_points
  belongs_to :level

  # 指定した緯度経度の範囲内にあるpointを取得
  def self.find_by_latlng(params)
    sw_lat = params[:sw_lat] # 南西緯度
    ne_lat = params[:ne_lat] # 北東緯度
    sw_lng = params[:sw_lng] # 南西経度
    ne_lng = params[:ne_lng] # 北東経度

    return self.where(
      ["latitude  >= ?",
       "latitude  <= ?",
       "longitude >= ?",
       "longitude <= ?"].join(' and '),
      sw_lat, ne_lat, sw_lng, ne_lng).order('updated_at desc').limit(100)
  end
end
