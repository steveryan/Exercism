class Triangle
  attr_reader :side1, :side2, :side3, :sides_array
  def initialize(sides_array)
    @sides_array = sides_array
    @side1 = sides_array[0]
    @side2 = sides_array[1]
    @side3 = sides_array[2]
  end

  def is_triangle?
    if @sides_array.include?("0")
      return false
    elsif @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1
      return true
    else return false
    end
  end

  def has_3_equal_sides
    @sides_array.uniq.length == 1 ? true:false
  end

  def has_at_least_2_equal_sides
    @sides_array.uniq.length <= 2 ? true:false
  end

  def has_no_equal_sides
    @sides_array.uniq.length == 3 ? true:false
  end


  def equilateral?
    is_triangle? && has_3_equal_sides
  end

  def isosceles?
    is_triangle? && has_at_least_2_equal_sides
  end

  def scalene?
    is_triangle? && has_no_equal_sides
  end

end
