class Series
  attr_reader :characters, :length
  def initialize(string)
    @characters = string.to_s.chars
    @length = @characters.length
  end

  def slices(number)
    checklength(number)
    response = []
    @characters.each_cons(number) do |number|
      response << number.join
    end
    response
  end

  def checklength(number)
    if number > self.length
      raise ArgumentError
    end
  end
end
