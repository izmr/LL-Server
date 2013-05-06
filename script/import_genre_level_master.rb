require 'pp'

[ '誰でも歓迎',
  '初心者向け(楽器経験 1年未満〜3年程度)',
  '中級者向け(楽器経験 5年〜程度)',
  '上級者向け(楽器経験 10年〜程度)'
].each do |level_name|
  level = Level.find_by_level_name level_name
  if level
    puts "already exists: #{level_name}"
  else
    level = Level.new
    level.level_name = level_name
    level.save
  end
end

[ 'Jazz(Bebop)',
  'Jazz(Free/Mode)',
  'Funk',
  'Rock',
  '民族音楽',
  'Dixieland Jazz',
].each do |genre_name|
  genre = Genre.find_by_genre_name genre_name
  if genre
    puts "already exists: #{genre_name}"
  else
    genre = Genre.new
    genre.genre_name = genre_name
    genre.save
  end
end
