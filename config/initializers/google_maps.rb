class GoogleMaps
  def self.key
    'AIzaSyCMArdK5IN5TQ5JdoRPIVlVdY1Ac1IKGT4'
  end
  def self.url
    "http://maps.googleapis.com/maps/api/js?sensor=false&key=#{self.key}"
  end
end
