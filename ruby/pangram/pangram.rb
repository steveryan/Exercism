class Pangram
  ALPHABET = ("a".."z").to_a
  def self.pangram?(sentence)
    ALPHABET.all? { |letter| sentence.downcase.include? letter}
  end
end

