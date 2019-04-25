class Squares
  attr_reader :numbers_array
  def initialize(number)
    @numbers_array = (1..number).to_a
  end

  def square_of_sum
    @numbers_array.sum**2
  end

  def sum_of_squares
    @numbers_array.map { |digit| digit**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares.abs
  end
end
