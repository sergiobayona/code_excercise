require 'csv'
require_relative 'processor'

class Soccer < Processor

  def initialize(file)
    @value_index = {name: 2, high: 7, low: 9}
    super(file)
  end

  def team_with_lowest_score_difference
    lowest_spread_row
  end

end
