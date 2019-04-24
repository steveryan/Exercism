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

  def equilateral?
    if is_triangle? == true && @side1 == @side2 && @side2 == @side3 then true else false end
  end

  def isosceles?
    if is_triangle? == true && (@side1 == @side2 || @side1 == @side3 || @side2 == @side3) then true else false end
  end

  def scalene?
    if is_triangle? == true && @side1 != @side2 && @side1 != @side3 && @side2 != @side3 then true else false end
  end

end
