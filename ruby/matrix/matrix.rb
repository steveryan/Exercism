class Matrix
  attr_reader :rows, :columns
  def initialize(string)
    string_matrix = string.split("\n").map { |string| string.split(" ")  }
    @rows = string_matrix.map do |row|
      row.map do |number|
        number = number.to_i
      end
    end
    @columns = @rows.transpose
  end
end
