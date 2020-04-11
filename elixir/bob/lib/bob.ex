defmodule Bob do
  def hey(input) do
    cond do
      String.trim(input) == "" ->
        "Fine. Be that way!"

      Regex.run(~r/[[:alpha:]]/, String.downcase(input)) == nil && String.ends_with?(input, "?") ->
        "Sure."

      String.upcase(input) == input && String.last(input) == "?" ->
        "Calm down, I know what I'm doing!"

      Regex.run(~r/[[:alpha:]]/, String.downcase(input)) == nil ->
        "Whatever."

      String.upcase(input) == input ->
        "Whoa, chill out!"

      input |> String.trim() |> String.last() == "?" ->
        "Sure."

      true ->
        "Whatever."
    end
  end
end
