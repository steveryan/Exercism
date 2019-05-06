class Series
  attr_reader :characters, :length
  def initialize(string)
    @characters = string.to_s.chars
    @length = @characters.length
  end

  def slices(number)
    checklength(number)
    response = []
    self.characters.each_with_index do |e, i|
      if i+number<=length
        response << self.characters.slice(i,number).join
      end
    end
    i = 0
    response
  end

  def checklength(number)
    if number > self.length
      raise ArgumentError
    end
  end
end
