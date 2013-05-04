require 'csv'
require 'pp'

filepath = Rails.root.join('data', 'seiyu.tsv')
shops    = CSV.read(filepath, {:col_sep => "\t"});

shops.each do |row|
  shop_name, address, latitude, longitude = row

  shop = LocalPoint.find_by_address(address)
  shop = LocalPoint.new unless shop

  shop.point_name = shop_name
  shop.address    = address
  shop.latitude   = latitude
  shop.longitude  = longitude
  if shop.save!
    puts "saved #{shop_name}"
  else
    puts "Could not saved #{shop_name}"
  end
end
