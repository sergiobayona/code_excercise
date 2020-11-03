require 'pry'
require 'test/unit'
require_relative 'soccer'


class SoccerTest < Test::Unit::TestCase

  def test_team_with_lowest_difference
    soccer = Soccer.new 'soccer.dat'
    assert_equal("Aston_Villa", soccer.team_with_lowest_score_difference["name"])
  end

end
