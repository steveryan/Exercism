class Grains

  def self.square(square_number)
    check_valid_square_number(square_number)
    number_grains = 2 ** (square_number-1)
  end

  def self.check_valid_square_number(square_number)
    if square_number < 1 || square_number > 64
      raise ArgumentError
    end
  end

  def self.total
    total=0
    1.upto(64) do |number|
      total += self.square(number)
    end
    total
  end
end
