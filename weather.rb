require 'csv'
require_relative 'processor'

class Weather < Processor

  def initialize(file)
    @value_index = {name: 1, high: 2, low: 3}
    super(file)
  end

  def day_with_lowest_spread
    lowest_spread_row
  end

end
