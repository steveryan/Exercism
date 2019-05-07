class Series
  attr_reader :characters, :length
  def initialize(string)
    @characters = string.to_s.chars
    @length = @characters.length
  end

  def slices(number)
    raise ArgumentError if number > self.length
    response = @characters.each_cons(number).map{ |number| number.join}
  end
end
