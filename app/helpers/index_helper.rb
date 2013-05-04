module IndexHelper
  def static_google_map_tag(options={})
    # optionが指定されなかった時のdefault値
    options.reverse_merge!(
      width: 600, height: 300, mark_center: true, zoom: 10)
    static_map_tag = image_tag(
      GoogleMaps.static_map_url(options),
      width:  options[:width],
      height: options[:height],
      alt:    "Map for #{options[:address]}")
    content_tag(:div, static_map_tag, id: options[:id],
      data: {
        googlemap: true,
        size:      "#{options[:width]}x#{options[:height]}",
        address:   options[:address],
        marker:    true,
        zoom:      options[:zoom]
      }
    ).html_safe
  end

  def google_map_tag(options={})
    # optionが指定されなかった時のdefault値
    options.reverse_merge!(width: 500, height: 500)
    style_tag =
      "width:#{options[:width]}px; height:#{options[:height]}px"

    content_tag( :div, nil, :id => options[:id], :style => style_tag)
  end
end
