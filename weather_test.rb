require 'test/unit'
require_relative 'weather'


class WeatherTest < Test::Unit::TestCase

  def test_day_with_smallest_spread
    weather = Weather.new 'w_data.dat'
    assert_equal("14", weather.day_with_lowest_spread["name"])
  end

end
