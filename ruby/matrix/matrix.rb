class Matrix
  attr_reader :rows, :columns
  def initialize(string)
    string_matrix = string.split("\n").map { |string| string.split(" ")  }
    @rows = string_matrix.map {|row| row.map(&:to_i)}
    @columns = @rows.transpose
  end
end
