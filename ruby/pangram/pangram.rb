class Pangram
  ALPHABET = ("a".."z").to_a
  def self.pangram?(sentence)
    value = true
    ALPHABET.each do |letter|
      if sentence.downcase.include? letter
        value = true
      else 
        value = false
        return value
      end
    end
    return value
  end
end

