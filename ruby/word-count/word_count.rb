class Phrase
  def initialize(words)
    @array_of_words = words.downcase.split(/[^'\w]+/)
  end

  def word_count
    @array_of_words.uniq.to_h { |word| [word, @array_of_words.count(word)] }
  end
end
