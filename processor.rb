require 'csv'

class Processor
  attr_reader :value_index, :headers

  def initialize(file)
    @file = File.readlines(file)
    @headers = %w{name spread}
    self.process
  end

  def process
    @file.each do |row|
      row_values = row.split(/\s+/)
      next if row_values[1].to_i.zero?
      table << [
        row_values[value_index[:name]],
        difference(row_values)
      ]
    end
  end

  def difference(values)
    (values[value_index[:high]].to_i -
      values[value_index[:low]].to_i).abs
  end

  def table
    @table ||= CSV::Table.new([], headers: headers)
  end

  def lowest_spread_row
    @table.min_by {|t| t["spread"]}
  end

end

