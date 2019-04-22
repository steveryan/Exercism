class Acronym
  def self.abbreviate(phrase)
    array = phrase.split(/\W+/)
    acronym_arr = array.map { |word| word[0].upcase}
    acronym_arr.join
  end
end

