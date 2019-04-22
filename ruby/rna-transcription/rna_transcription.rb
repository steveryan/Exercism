class Complement
  def self.of_dna(string_of_dna)
    rna = string_of_dna.chars.map do |letter|
      case letter
      when "G"
        "C"
      when "C"
        "G"
      when "T"
        "A"
      when "A"
        "U"
      end
    end
    rna.join
  end
end
