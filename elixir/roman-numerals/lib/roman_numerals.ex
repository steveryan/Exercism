defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number, total \\ "") do
    cond do
      number == 900 ->
        "CM"
        total <> "CM"

      number > 900 && number < 1000 ->
        "CM"
        numeral(number - 900, total <> "CM")

      number == 1000 ->
        "M"
        total <> "M"

      number > 1000 ->
        "M"
        numeral(number - 1000, total <> "M")

      number == 400 ->
        "CD"
        total <> "CD"

      number > 400 && number < 500 ->
        "CD"
        numeral(number - 400, total <> "CD")

      number == 500 ->
        "D"
        total <> "D"

      number > 500 ->
        "D"
        numeral(number - 500, total <> "D")

      number == 90 ->
        "XC"
        total <> "XC"

      number > 90 && number < 100 ->
        "XC"
        numeral(number - 90, total <> "XC")

      number == 100 ->
        "C"
        total <> "C"

      number > 100 ->
        "C"
        numeral(number - 100, total <> "C")

      number == 40 ->
        "IL"
        total <> "IL"

      number > 40 && number < 50 ->
        "IL"
        numeral(number - 40, total <> "XL")

      number == 50 ->
        "L"
        total <> "L"

      number > 50 ->
        "L"
        numeral(number - 50, total <> "L")

      number == 9 ->
        "IX"
        total <> "IX"

      number == 10 ->
        "X"
        total <> "X"

      number > 10 ->
        "X"
        numeral(number - 10, total <> "X")

      number == 5 ->
        "V"
        total <> "V"

      number > 5 ->
        "V"
        numeral(number - 5, total <> "V")

      number == 4 ->
        "IV"
        total <> "IV"

      number > 1 ->
        "I"
        numeral(number - 1, total <> "I")

      1 ->
        total <> "I"
    end
  end
end
