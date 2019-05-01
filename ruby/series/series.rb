require "pry"
class Series
  attr_reader :characters, :length
  def initialize(string)
    @characters = string
    @length = string.length
  end

  def slices(number)
    checklength(number)
    response = []
    i = 0
    while i<(self.length)
      if i+number<=length
        response << self.characters.slice(i,number)
      end
      i+=1
    end
    response
  end

  def checklength(number)
    if number > self.length
      raise ArgumentError
    end
  end
end
