require 'test_helper'
require 'pp'

class LocalPointTest < ActiveSupport::TestCase
  test "has many genres and one level" do
    point = local_points(:one)
    assert point.level.level_name, '誰でも歓迎'
    assert point.genre[0].genre_name, 'ジャズ'
    assert point.genre[1].genre_name, 'フリージャズ'
  end

  test "has no genres" do
    point = local_points(:two)
    assert_nil point.level
    assert_equal 0, point.genre.length
  end
end
