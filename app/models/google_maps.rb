class GoogleMaps
  def self.key
    'AIzaSyCMArdK5IN5TQ5JdoRPIVlVdY1Ac1IKGT4'
  end
  def self.url
    "http://maps.googleapis.com/maps/api/js?sensor=false&key=#{self.key}"
  end
  def self.static_map_url(options)
    map_params = [].tap do |p|
      p << ["key",     self.key]
      p << ["size",    "#{options[:width]}x#{options[:height]}"]
      p << ["zoom",    options[:zoom]]
      p << ["center",  options[:address]]
      p << ["markers", options[:address]] if options[:mark_center]
      p << ["maptype", "roadmap"]
      p << ["sensor",  "false"]
    end

    url = "http://maps.google.com/maps/api/staticmap?"
    url += map_params.map { |p|
      k,v=*p
      "#{k}=#{CGI.escape(v.to_s)}"
    }.join("&")
  end
end
